const express = require('express');
//引入用户路由器
const proRouter = require('./router/pro.js');
//引入body-parser中间件模块
const bodyParser = require('body-parser');
const app = express();
app.listen(8080);

//托管静态资源到public目录
app.use( express.static('./public') );
//使用body-parser将post请求解析为对象
app.use(bodyParser.urlencoded({
    extended: false
}))

const cors = require("cors");
//配置允许跨域程序
app.use(cors({
	 origin:["http://127.0.0.1:8080","http://localhost:8080"]
}))

//引入cookie-parser
// const cookieParser = require('cookie-parser');
//引入express-session
const session = require("express-session");
// app.use(cookieParser());
app.use(session({
    name: 'session-id',
    secret: '123456',
    // cookie: {maxAge: 600000},
    saveUninitialized: true,
    resave: false
}))


//挂载路由器到web服务器下
app.use('/pro',proRouter); 