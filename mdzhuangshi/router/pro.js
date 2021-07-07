const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建路由器模块
const r = express.Router();

//第三方验证码模块
const svgCaptcha = require('svg-captcha');
const { rawListeners } = require('../pool.js');
r.get('/code', (req, res) => {
    const cap = svgCaptcha.createMathExpr({
        fontSize: 45,
        mathMin: 1,
        mathMax: 9,
        mathOperator: '+-',
        width: 110,
        height: 45,
        color: true
    })
    req.session.captcha = cap.text;
    res.type('svg');
    res.send(cap.data);
});

//客户反馈列表
r.get('/client_est',(req,res) => {
    pool.query('select c_title,c_time,c_smallimg,c_desc,c_detail from client_estimate',(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
})
//客户反馈详情页
r.get('/client_img',(req,res) => {
    var c_detail = req.query;
    var c_id = c_detail.lid;               //获取传递过来的参数中的lid属性值
    pool.query('select img_url,img_desc from client_img where client_id=?',[c_id],(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
});
//企业动态列表页
r.get('/brand_state',(req,res) => {
    pool.query('select sub_time,b_title,img_url,b_detail from brand_state',(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
});
//企业动态列表详情页
r.get('/brand_img',(req,res) => {
    var c_detail = req.query;
    var c_id = c_detail.lid;               //获取传递过来的参数中的lid属性值
    pool.query('select img_url,img_des from brand_img where state_id=?',[c_id],(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
});
//设计团队列表
r.get('/designers_team',(req,res) => {
    pool.query('select dtname,dt_img,idea,design_id from designers_team',(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
});
//设计团队详情页面
r.get('/designers_teams',(req,res) => {
    var c_detail = req.query;
    var c_id = c_detail.lid;               //获取传递过来的参数中的lid属性值
    pool.query('select dtname,dt_img,idea,dtstyle,dtprod,dtbelong,com_site,com_intro,dthonor from designers_team where design_id=?',[c_id],(err,result) => {
        if(err) throw err;
        res.send({code: 1,msg: '成功',data: result});
    });
});
//设计团队详情页面底部团队作品展示
// r.get('/designers_prod',(req,res) => {
//     var results = '';
//     var c_detail = req.query;
//     var c_id = c_detail.lid;               //获取传递过来的参数中的lid属性值
//     pool.query('select dtname from designers_team where design_id=?',[c_id],(err,result1) => {
//         if(err) throw err;
//         var obj1 = result1;
//         var name = obj1[0].dtname;               //查询后返回值为数组格式，需要的数据为在数组中的属性值
//         pool.query('select img_detail from case_list where design_team=?',[name],(err,result2) => {
//             if(err) throw err;
//             var obj2 = result2;
//             for(var i=obj2.length-1;i>obj2.length-4;i--) {          //因为页面只展示三个案例，所以从获取的列表中从后往前依次取三个结果（后边的数据新一点）
//                 pool.query('select title,style,house_type,area,imgs from case_list left join case_img on img_detail=listid where img_detail=?',[obj2[i].img_detail],(err,result3) => {
//                     if(err) throw err;
//                     results += JSON.stringify(result3[0]); 
//                     // console.log(results);
//                     return results;
//                 });
//             }
//             res.send({code: 1,msg: '成功',data: results});
//         });
//     });
// });
r.get('/designers_prod',(req,res) => {
    var results = '';
    var c_detail = req.query;
    var c_id = c_detail.lid;               //获取传递过来的参数中的lid属性值
    pool.query('select dtname from designers_team where design_id=?',[c_id],(err,result1) => {
        if(err) throw err;
        var obj1 = result1;
        var name = obj1[0].dtname;               //查询后返回值为数组格式，需要的数据为在数组中的属性值
        pool.query('select title,small_img,style,house_type,area from case_list where design_team=? limit 3',[name],(err,result2) => {
            if(err) throw err;
            res.send({code: 1,msg: '成功',data: result2});
        });
    });
});
r.get('/designers_list', (req, res) => {
    var c_detail = req.query;
    var c_id = c_detail.lid;
    pool.query('select dname, dpic, team from designers where team_id = ?', [c_id], (err, result) => {
        if(err) throw err;
        res.send({code: 1, msg: '成功', data: result})
    })
})

// 装修案例汇总
r.get('/case_all', (req, res) => {
    var r = req.query;
    var pageNum = r.pageNum;
    var pageSize = 6;           //默认每页展示6条
    if( pageNum == 'undefined') {
        pageNum = 1;
    }
    var page = ( pageNum - 1 ) * pageSize;
    pool.query('select title, style, house_type, small_img, img_detail from case_list limit ?, ?', [page, pageSize], (err, result1) => {
        if(err) throw err;
        pool.query('select count(cid) as c from case_list', (err, result2) => {             //一共有多少页
            if(err) throw err;
            var count = Math.ceil( result2[0].c / pageSize);
            res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count})
        })

    })
})
//装修案例按钮按条件筛选结果
r.post('/case_list_filter', (req, res) => {
    var r = req.body;

    var pageNum = r.pageNum;
    var pageSize = 6;           //默认每页展示6条
    if( pageNum == undefined) {
        pageNum = 1;
    }
    var page = ( pageNum - 1 ) * pageSize;
    // console.log(pageNum);

    var style  = r.style;
    var house = r.house_type;
    var area = r.area;
    var arr = area.split("-");          //处理返回的面积过滤数据
    var min = parseInt( arr[0] );
    var max = parseInt( arr[1] );
    console.log(house);
    

    //多条件筛选，必须要在单条件筛选前触发
    if(area != "") {              //当点击面积的情况下（因为通过面积查询的方法与另外两种语法上略有不同，所以先用是否点击面积分为两种情况） 
        if(style != "" && house != "") {                //风格和户型均不为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where style = ? and house_type = ?  and area between ? and ? limit ?, ? ', [style, house, min, max, page, pageSize], (err, result1) => {
                if(err) throw err;
                pool.query('select count(cid) as c from case_list where style = ? and house_type = ? and area between ? and ?', [style, house, min, max], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                })
            })         
        } else if(style == "" && house != "") {             //风格不为空，户型为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where house_type = ? and area between ? and ? limit ?, ? ', [house, min, max, page, pageSize], (err, result1) => {
            if(err) throw err;
                pool.query('select count(cid) as c from case_list where house_type = ? and area between ? and ?', [house, min, max], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                }) 
            })
        } else if(style != "" && house == "") {                 //风格为空，户型不为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where style = ? and area between ? and ? limit ?, ? ', [style, min, max, page, pageSize], (err, result1) => {
                if(err) throw err;
                pool.query('select count(cid) as c from case_list where style = ? and area between ? and ?', [style, min, max], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                })
            }) 
        } else if(style == "" && house == "") {                 //风格、户型均为空，也就是只点击了面积
            pool.query('select title, style, house_type, small_img, img_detail from case_list where area between ? and ?  limit ?, ? ', [min, max, page, pageSize], (err, result1) => {
            if(err) throw err;
                pool.query('select count(cid) as c from case_list where area between ? and ?', [min, max], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                })
            })
        }
        
    } else if(area == "") {                 //没有点击面积的情况下
        if(style != "" && house != "") {                    //风格、户型均不为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where style = ? and house_type = ?  limit ?, ? ', [style, house,page,pageSize], (err, result1) => {
            if(err) throw err;
                pool.query('select count(cid) as c from case_list where style = ? and house_type = ?', [style, house], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                })
            })
        } else if(style == "" && house != "") {                 //风格为空，户型不为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where house_type = ?  limit ?, ? ', [house, page, pageSize], (err, result1) => {
            if(err) throw err;
                pool.query('select count(cid) as c from case_list where house_type = ?', [house], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                }) 
            })
        } else if(style != "" && house == "") {                 //风格不为空，户型为空
            pool.query('select title, style, house_type, small_img, img_detail from case_list where style = ?  limit ?, ? ', [style, page, pageSize], (err, result1) => {
            if(err) throw err;
                pool.query('select count(cid) as c from case_list where style = ?', [style], (err, result2) => {
                    if(err) throw err;
                    var count = Math.ceil( result2[0].c / pageSize);
                    res.send({code: 1, msg: '成功', data: result1, page: pageNum, count: count});
                })
            }) 
        }
    }


    
})
//装修案例搜索框按条件筛选结果
r.post("/case_list_search", (req, res) => {   
    var r = req.body;
    var input = r.input;
    pool.query(`select title, style, house_type, small_img, img_detail from case_list where title like '%${input}%' or house_name like '%${input}%' limit 0, 12`, (err, result) => {
        if(err) throw err;
        res.send(result);
    })
})
//装修案例详情简介部分
r.get('/case_item', (req, res) => {
    var c_detail = req.query;
    var c_id = c_detail.listid;
    pool.query('select title, style, house_type, area, price, house_name, design_team, designer, intro from case_list where img_detail = ?', [c_id], (err, result) => {
        if(err) throw err;
        res.send({code: 1, msg: '成功', data: result})
    })
})
//装修案例详情图片部分
r.get('/case_img', (req, res) => {
    var c_detail = req.query;
    var c_id = c_detail.listid;
    pool.query('select imgs, titles from case_img where listid = ?', [c_id], (err, result) => {
        if(err) throw err;
        res.send({code: 1, msg: '成功', data: result})
    })
})

//用户登录
r.post('/login', (req, res) => {
    var r = req.body;
    var code = r.code;
    if(code != req.session.captcha) {               //验证码是否正确
        res.send({code: -1, msg: '失败'});
        return;
    }
    if(req.session.auth) {              //检查之前是否为登录状态
        res.send({code: 1, msg: '成功'});
        return;
    }
    var uname = r.uname;
    var upwd = r.upwd;
    pool.query("select * from user_list where uname = ? and upwd = ?", [uname, upwd], (err, result) => {
        if(err) throw err;
        if(result.length == 0) {
            req.session.auth = false;
            res.send({code: 0, msg: '失败'})
        } else {
            req.session.auth = true;
            req.session.uname = uname;
            res.send({code: 1, msg: '成功'});
        }
    })
})
//用户注册
r.post('/register', (req, res) => {
    var r = req.body;
    var code = r.code;
    if(code != req.session.captcha) {               //验证码是否正确
        res.send({code: -1, msg: '失败'});
        return;
    }
    var uname = r.uname;
    var upwd = r.upwd;
    pool.query("insert into user_list(uname, upwd) values(?, ?)", [uname, upwd], (err, result) => {
        if(err) throw err;
        if(result.affectedRows == 0) {
            res.send({code: 0, msg: '注册失败'})
        } else {
            res.send({code: 1, msg: '注册成功'})
        }
    })
})
//验证用户名是否存在
r.get('/exists', (req, res) => {
    var r = req.query;
    var uname = r.uname;
    pool.query('select uname from user_list where uname = ?', [uname], (err, result) => {
        if(err) throw err;
        if(result.length == 0) {
            res.send({code: 0, msg: '查找失败'})
        } else {
            res.send({code: 1, msg: '查找成功'})
        }
    })
})
//验证用户是否登录
r.get('/isLogin', (req, res) => {
    if(req.session.auth) {
        res.send({code: 1, msg: '已经登录', data: req.session.uname})
    } else {
        res.send({code: 0, msg: '未登录'})
    }
})
//退出登录
r.get('/exit', (req, res) => {
    req.session.auth = false;
    res.send({code: 1, msg: '成功'})
})
//案例列表页设计师头像
r.get('/designer_icon', (req, res) => {
    var r = req.query;
    pool.query('select dpic from designers where dname = ?', [r.uname], (err, result) => {
        if(err) throw err;
        res.send({code: 1, data: result})
    })
})
//导出路由器对象
module.exports = r;  

