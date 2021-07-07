SET NAMES UTF8;
DROP DATABASE IF EXISTS mingdiao;
CREATE DATABASE mingdiao charset=UTF8;
USE mingdiao;

-- 案例详情页
-- 详情页图片
CREATE TABLE case_img(
    imgid INT PRIMARY KEY AUTO_INCREMENT,
    listid INT,
    imgs VARCHAR(128),
    titles VARCHAR(32)
);
INSERT INTO case_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz16.jpg','现代风格-天鹅堡三期-客厅');
INSERT INTO case_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz19.jpg','现代风格-天鹅堡三期-主卧');
INSERT INTO case_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz18.jpg','现代风格-天鹅堡三期-原始图');
INSERT INTO case_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz17.jpg','现代风格-天鹅堡三期-平面图');
INSERT INTO case_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__729.jpg','美的君兰江山-欧式轻奢-主卧');
INSERT INTO case_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__567.jpg','美的君兰江山-欧式轻奢-主卧');
INSERT INTO case_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/case/nan_hai_fang__84.jpg','美的君兰江山-欧式轻奢-男孩房申请免费设计方案
');
INSERT INTO case_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/case/nu_hai_fang__75.jpg','美的君兰江山-欧式轻奢-女孩房');
INSERT INTO case_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ke_ting_.jpg','红树湾壹号-美式轻奢风格-客厅');
INSERT INTO case_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-zhu_wo_.jpg','红树湾壹号-美式轻奢风格-主卧');
INSERT INTO case_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ci_wo_1.jpg','红树湾壹号-美式轻奢风格-次卧');
INSERT INTO case_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ping_mian_bu_zhi_tu_.jpg','红树湾壹号-美式轻奢风格-平面布置图');
INSERT INTO case_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__773.jpg','怡翠晋盛-新中式-客厅');
INSERT INTO case_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/case/can_ting__458.jpg','怡翠晋盛-新中式-餐厅');
INSERT INTO case_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/case/shu_fang__186.jpg','怡翠晋盛-新中式-书房');
INSERT INTO case_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/case/wo_shi__179.jpg','怡翠晋盛-新中式-卧室');
INSERT INTO case_img VALUES(null,5,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__64.jpg','汇景豪苑-法式风格-三居室-客厅');
INSERT INTO case_img VALUES(null,5,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__34.jpg','汇景豪苑-法式风格-三居室-卧室');
INSERT INTO case_img VALUES(null,5,'http://file.mingdiao.com.cn/sites/default/files/case/feng_tai_yue_rong_dong_an_19-1-902fu_xiao_jie_lao_ren_fang_.jpg','汇景豪苑-法式风格-三居室-老人房');
INSERT INTO case_img VALUES(null,5,'http://file.mingdiao.com.cn/sites/default/files/case/xiao_hai_fang__8.jpg','汇景豪苑-法式风格-三居室-小孩房');
INSERT INTO case_img VALUES(null,6,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528131.jpg','怡翠宏景-欧式风格-客厅');
INSERT INTO case_img VALUES(null,6,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_20201216152813.jpg','怡翠宏景-欧式风格-餐厅');
INSERT INTO case_img VALUES(null,6,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528132.jpg','怡翠宏景-欧式风格-书房');
INSERT INTO case_img VALUES(null,6,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528133.jpg','怡翠宏景-欧式风格-卧室');
INSERT INTO case_img VALUES(null,7,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815746051.jpg','现代-梅溪正荣府-客厅');
INSERT INTO case_img VALUES(null,7,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815723331.jpg','现代-梅溪正荣府-餐厅');
INSERT INTO case_img VALUES(null,7,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171824497511.jpg','现代-梅溪正荣府-卧室');
INSERT INTO case_img VALUES(null,7,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171824543621.jpg','现代-梅溪正荣府-书房');
INSERT INTO case_img VALUES(null,8,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz11.jpg','美式轻奢-锦绣山河-客餐厅');
INSERT INTO case_img VALUES(null,8,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz12.jpg','美式轻奢-锦绣山河-客餐厅');
INSERT INTO case_img VALUES(null,8,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz10.jpg','美式轻奢-锦绣山河-主卧');
INSERT INTO case_img VALUES(null,8,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz13.jpg','美式轻奢-锦绣山河-平面图');
INSERT INTO case_img VALUES(null,9,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__792.jpg','万科中天城市花园-新中式-客厅');
INSERT INTO case_img VALUES(null,9,'http://file.mingdiao.com.cn/sites/default/files/case/can_ting__478.jpg','万科中天城市花园-新中式-餐厅');
INSERT INTO case_img VALUES(null,9,'http://file.mingdiao.com.cn/sites/default/files/case/shu_fang__193.jpg','万科中天城市花园-新中式-书房');
INSERT INTO case_img VALUES(null,9,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__621.jpg','万科中天城市花园-新中式-主卧');
INSERT INTO case_img VALUES(null,10,'http://file.mingdiao.com.cn/sites/default/files/case/2yi_fang_jiu_yu_4b2202huang_jie_ke_ting__0.jpg','壹方中心玖誉-法式轻奢-客厅');
INSERT INTO case_img VALUES(null,10,'http://file.mingdiao.com.cn/sites/default/files/case/3yi_fang_jiu_yu_4b2202huang_jie_zhu_wo_01_0.jpg','壹方中心玖誉-法式轻奢-卧室');
INSERT INTO case_img VALUES(null,10,'http://file.mingdiao.com.cn/sites/default/files/case/1yi_fang_jiu_yu_4b2202huang_jie_dian_ti_ting_.jpg','壹方中心玖誉-法式轻奢-电梯厅');
INSERT INTO case_img VALUES(null,11,'http://file.mingdiao.com.cn/sites/default/files/case/d398a802d7fb64d603c6d0158f1bfe9.jpg','雅居乐富春山居-欧式风格-客厅');
INSERT INTO case_img VALUES(null,11,'http://file.mingdiao.com.cn/sites/default/files/case/3f1d01e2fa0f2ce52a10e1ac2473a73.jpg','雅居乐富春山居-欧式风格-餐厅');
INSERT INTO case_img VALUES(null,11,'http://file.mingdiao.com.cn/sites/default/files/case/01912d54eefc4a77e815ea7cbdc1adf.jpg','雅居乐富春山居-欧式风格-客餐厅');
INSERT INTO case_img VALUES(null,11,'http://file.mingdiao.com.cn/sites/default/files/case/45bb467da70d1339df77b4b06d74f63.jpg','雅居乐富春山居-欧式风格-主卧');
INSERT INTO case_img VALUES(null,12,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz14_0.jpg','现代轻奢家居园龙园客厅');
INSERT INTO case_img VALUES(null,12,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz17_0.jpg','现代轻奢家居园龙园客厅');
INSERT INTO case_img VALUES(null,12,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz09_0.jpg','现代轻奢家居园龙园餐厅');
INSERT INTO case_img VALUES(null,12,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz34.jpg','现代轻奢家居园龙园主卧');
INSERT INTO case_img VALUES(null,13,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_1.jpg','一号公馆-美式风格-客厅');
INSERT INTO case_img VALUES(null,13,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_2.jpg','一号公馆-美式风格-餐厅');
INSERT INTO case_img VALUES(null,13,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_3.jpg','一号公馆-美式风格-主卧');
INSERT INTO case_img VALUES(null,13,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_5.jpg','一号公馆-美式风格-平面布置图');
INSERT INTO case_img VALUES(null,14,'http://file.mingdiao.com.cn/sites/default/files/case/img_0295.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,14,'http://file.mingdiao.com.cn/sites/default/files/case/img_0298.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,14,'http://file.mingdiao.com.cn/sites/default/files/case/img_0310.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,14,'http://file.mingdiao.com.cn/sites/default/files/case/img_0368_0.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,15,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz16.jpg','现代风格-天鹅堡三期-客厅');
INSERT INTO case_img VALUES(null,15,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz19.jpg','现代风格-天鹅堡三期-主卧');
INSERT INTO case_img VALUES(null,15,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz18.jpg','现代风格-天鹅堡三期-原始图');
INSERT INTO case_img VALUES(null,15,'http://file.mingdiao.com.cn/sites/default/files/case/20210512sz17.jpg','现代风格-天鹅堡三期-平面图');
INSERT INTO case_img VALUES(null,16,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__729.jpg','美的君兰江山-欧式轻奢-主卧');
INSERT INTO case_img VALUES(null,16,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__567.jpg','美的君兰江山-欧式轻奢-主卧');
INSERT INTO case_img VALUES(null,16,'http://file.mingdiao.com.cn/sites/default/files/case/nan_hai_fang__84.jpg','美的君兰江山-欧式轻奢-男孩房申请免费设计方案
');
INSERT INTO case_img VALUES(null,16,'http://file.mingdiao.com.cn/sites/default/files/case/nu_hai_fang__75.jpg','美的君兰江山-欧式轻奢-女孩房');
INSERT INTO case_img VALUES(null,17,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_f17ng_ge_-ke_ting_.jpg','红树湾壹号-美式轻奢风格-客厅');
INSERT INTO case_img VALUES(null,17,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-zhu_wo_.jpg','红树湾壹号-美式轻奢风格-主卧');
INSERT INTO case_img VALUES(null,17,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ci_wo_1.jpg','红树湾壹号-美式轻奢风格-次卧');
INSERT INTO case_img VALUES(null,17,'http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ping_mian_bu_zhi_tu_.jpg','红树湾壹号-美式轻奢风格-平面布置图');
INSERT INTO case_img VALUES(null,18,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__773.jpg','怡翠晋盛-新中式-客厅');
INSERT INTO case_img VALUES(null,18,'http://file.mingdiao.com.cn/sites/default/files/case/can_ting__458.jpg','怡翠晋盛-新中式-餐厅');
INSERT INTO case_img VALUES(null,18,'http://file.mingdiao.com.cn/sites/default/files/case/shu_fang__186.jpg','怡翠晋盛-新中式-书房');
INSERT INTO case_img VALUES(null,18,'http://file.mingdiao.com.cn/sites/default/files/case/wo_shi__179.jpg','怡翠晋盛-新中式-卧室');
INSERT INTO case_img VALUES(null,19,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__64.jpg','汇景豪苑-法式风格-三居室-客厅');
INSERT INTO case_img VALUES(null,19,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__34.jpg','汇景豪苑-法式风格-三居室-卧室');
INSERT INTO case_img VALUES(null,19,'http://file.mingdiao.com.cn/sites/default/files/case/feng_tai_yue_rong_dong_an_19-1-902fu_xiao_jie_lao_ren_fang_.jpg','汇景豪苑-法式风格-三居室-老人房');
INSERT INTO case_img VALUES(null,19,'http://file.mingdiao.com.cn/sites/default/files/case/xiao_hai_fang__8.jpg','汇景豪苑-法式风格-三居室-小孩房');
INSERT INTO case_img VALUES(null,20,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528131.jpg','怡翠宏景-欧式风格-客厅');
INSERT INTO case_img VALUES(null,20,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_20201216152813.jpg','怡翠宏景-欧式风格-餐厅');
INSERT INTO case_img VALUES(null,20,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528132.jpg','怡翠宏景-欧式风格-书房');
INSERT INTO case_img VALUES(null,20,'http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528133.jpg','怡翠宏景-欧式风格-卧室');
INSERT INTO case_img VALUES(null,21,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815746051.jpg','现代-梅溪正荣府-客厅');
INSERT INTO case_img VALUES(null,21,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815723331.jpg','现代-梅溪正荣府-餐厅');
INSERT INTO case_img VALUES(null,21,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171824497511.jpg','现代-梅溪正荣府-卧室');
INSERT INTO case_img VALUES(null,21,'http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171824543621.jpg','现代-梅溪正荣府-书房');
INSERT INTO case_img VALUES(null,22,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz11.jpg','美式轻奢-锦绣山河-客餐厅');
INSERT INTO case_img VALUES(null,22,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz12.jpg','美式轻奢-锦绣山河-客餐厅');
INSERT INTO case_img VALUES(null,22,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz10.jpg','美式轻奢-锦绣山河-主卧');
INSERT INTO case_img VALUES(null,22,'http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz13.jpg','美式轻奢-锦绣山河-平面图');
INSERT INTO case_img VALUES(null,23,'http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__792.jpg','万科中天城市花园-新中式-客厅');
INSERT INTO case_img VALUES(null,23,'http://file.mingdiao.com.cn/sites/default/files/case/can_ting__478.jpg','万科中天城市花园-新中式-餐厅');
INSERT INTO case_img VALUES(null,23,'http://file.mingdiao.com.cn/sites/default/files/case/shu_fang__193.jpg','万科中天城市花园-新中式-书房');
INSERT INTO case_img VALUES(null,23,'http://file.mingdiao.com.cn/sites/default/files/case/zhu_wo__621.jpg','万科中天城市花园-新中式-主卧');
INSERT INTO case_img VALUES(null,24,'http://file.mingdiao.com.cn/sites/default/files/case/2yi_fang_jiu_yu_4b2202huang_jie_ke_ting__0.jpg','壹方中心玖誉-法式轻奢-客厅');
INSERT INTO case_img VALUES(null,24,'http://file.mingdiao.com.cn/sites/default/files/case/3yi_fang_jiu_yu_4b2202huang_jie_zhu_wo_01_0.jpg','壹方中心玖誉-法式轻奢-卧室');
INSERT INTO case_img VALUES(null,24,'http://file.mingdiao.com.cn/sites/default/files/case/1yi_fang_jiu_yu_4b2202huang_jie_dian_ti_ting_.jpg','壹方中心玖誉-法式轻奢-电梯厅');
INSERT INTO case_img VALUES(null,25,'http://file.mingdiao.com.cn/sites/default/files/case/d398a802d7fb64d603c6d0158f1bfe9.jpg','雅居乐富春山居-欧式风格-客厅');
INSERT INTO case_img VALUES(null,25,'http://file.mingdiao.com.cn/sites/default/files/case/3f1d01e2fa0f2ce52a10e1ac2473a73.jpg','雅居乐富春山居-欧式风格-餐厅');
INSERT INTO case_img VALUES(null,25,'http://file.mingdiao.com.cn/sites/default/files/case/01912d54eefc4a77e815ea7cbdc1adf.jpg','雅居乐富春山居-欧式风格-客餐厅');
INSERT INTO case_img VALUES(null,25,'http://file.mingdiao.com.cn/sites/default/files/case/45bb467da70d1339df77b4b06d74f63.jpg','雅居乐富春山居-欧式风格-主卧');
INSERT INTO case_img VALUES(null,26,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz14_0.jpg','现代轻奢家居园龙园客厅');
INSERT INTO case_img VALUES(null,26,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz17_0.jpg','现代轻奢家居园龙园客厅');
INSERT INTO case_img VALUES(null,26,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz09_0.jpg','现代轻奢家居园龙园餐厅');
INSERT INTO case_img VALUES(null,26,'http://file.mingdiao.com.cn/sites/default/files/case/20210315sz34.jpg','现代轻奢家居园龙园主卧');
INSERT INTO case_img VALUES(null,27,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_1.jpg','一号公馆-美式风格-客厅');
INSERT INTO case_img VALUES(null,27,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_2.jpg','一号公馆-美式风格-餐厅');
INSERT INTO case_img VALUES(null,27,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_3.jpg','一号公馆-美式风格-主卧');
INSERT INTO case_img VALUES(null,27,'http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_5.jpg','一号公馆-美式风格-平面布置图');
INSERT INTO case_img VALUES(null,28,'http://file.mingdiao.com.cn/sites/default/files/case/img_0295.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,28,'http://file.mingdiao.com.cn/sites/default/files/case/img_0298.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,28,'http://file.mingdiao.com.cn/sites/default/files/case/img_0310.jpg','新中式翠景山庄客厅实景');
INSERT INTO case_img VALUES(null,28,'http://file.mingdiao.com.cn/sites/default/files/case/img_0368_0.jpg','新中式翠景山庄客厅实景');
-- 详情页信息
CREATE TABLE case_list(             
    cid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(16),
    small_img VARCHAR(128),
    style VARCHAR(8),
    house_type VARCHAR(8),
    area SMALLINT,
    price TINYINT,
    house_name VARCHAR(16),
    design_team VARCHAR(16),
    designer VARCHAR(16),
    intro VARCHAR(300),
    sub_time VARCHAR(16),
    img_detail INT,
    FOREIGN KEY(img_detail) REFERENCES case_img(imgid)
);
INSERT INTO case_list VALUES(null,'天鹅堡','http://file.mingdiao.com.cn/sites/default/files/case/20210512sz16.jpg','现代简约','三居室',122,15,'深业中城','新绿岛设计团队','高超','采用精简、低调内敛的灰是用于家居装扮的首选基调色彩，呈现优雅魅力和精致大气的视觉感官，符合人们对现代生活的审美需求。空间布局上，客餐厅、起居室相连接贯通空间，视觉上十分开阔明朗。给人感觉简单大气，设计费1.1万，工程15万，全包35万。','2021-5-17',1);
INSERT INTO case_list VALUES(null,'美的君兰江山','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__729.jpg','欧式风格','三居室',180,25,'前城滨海花园','新绿岛设计团队','林丽霞','','2021-5-16',2);
INSERT INTO case_list VALUES(null,'红树湾壹号','http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ke_ting_.jpg','美式风格','三居室',146,22,'前城滨海花园','新绿岛设计团队','宗金江','业主比较喜欢简约风格，又不失一些线条感，最终的风格确认为美式轻奢，大凡美式风格，因为粗犷的线条和重色，要避免过多的堆叠造成空间和视觉上的拥挤。本案的设计，采用了流行的灰色系，搭配柔光仿大理石砖，使整个空间沉稳不失温馨。浅色艺术涂料和护墙板的加入，缓解了传统美式厚重感，整个格局大气不失精致。','2021-5-21',3);
INSERT INTO case_list VALUES(null,'怡翠晋盛','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__773.jpg','中式风格','三居室',135,16,'前城滨海花园','新绿岛设计团队','贾希涛','','2021-5-22',4);
INSERT INTO case_list VALUES(null,'汇景豪苑','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__64.jpg','法式风格','三居室',147,26,'深业中城','富强设计团队','贾希涛','业主是潮州客户，比较喜欢金碧辉煌之感，在设计手法上既有雍容华贵的富足感，又不失惬意美妙的生活气息。 整体的空间动线、功能使用、格局分割、材质选用都呈现出一种和谐与流畅。运用和谐高档的色调与材质交错搭配营造出不同于一般古典居家风格的清净、爽朗，为业主编织、融合出兼具知性与感性、雅致又浪漫的美好生活细节。','2021-4-14',5);
INSERT INTO case_list VALUES(null,'怡翠宏景','http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528131.jpg','欧式风格','四居室',200,25,'前城滨海花园','富强设计团队','卓华青','欧式风格，整体格调以黄色为主色调，高品质和简约为基础，设计简洁大方，时尚，前卫，优雅，给人温暖舒适的感觉。','2021-5-18',6);
INSERT INTO case_list VALUES(null,'梅溪正荣府','http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815746051.jpg','现代简约','四居室',189,32,'万科翡翠松湖','富强设计团队','韩鑫桦','遵循断舍离式的居住理念，不仅在为空间做减法，更是为生活做减法。','2021-5-14',7);
INSERT INTO case_list VALUES(null,'锦绣山河','http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz11.jpg','美式风格','四居室',210,38,'万科翡翠松湖','富强设计团队','董政','设计如同量体裁衣，好的设计要“合身”，设计费6.3万，工程38万，全包120万。','2021-5-13',8);
INSERT INTO case_list VALUES(null,'万科中天城市花园','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__792.jpg','中式风格','四居室',230,23,'万科翡翠松湖','财富港设计团队','谢文启','本案例为新中式风格，将中国传统风格文化意义在当前时代背景下进行演绎，是把中国当代文化充分理解基础上的设计。','2021-5-12',9);
INSERT INTO case_list VALUES(null,'壹方中心玖誉','http://file.mingdiao.com.cn/sites/default/files/case/2yi_fang_jiu_yu_4b2202huang_jie_ke_ting__0.jpg','法式风格','四居室',220,35,'万科翡翠松湖','财富港设计团队','唐光喜','法式轻奢风格讲究点缀在自然中，并不在乎占地面积大小，追求色彩和内在联系，让人感到有很大的活动空间。也有意呈现建筑与周围环境的冲突，崇尚冲突之美。在设计上讲求心灵的自然回归感，给人一种扑面而来的浓郁气息。法式风格装修也是现在很多人选择的。','2021-5-11',10);
INSERT INTO case_list VALUES(null,'富春山居','http://file.mingdiao.com.cn/sites/default/files/case/d398a802d7fb64d603c6d0158f1bfe9.jpg','欧式风格','五居室',420,56,'深业中城','财富港设计团队','陈诚俊','客户要求：本案业主主要是两家人一起住。因为大家都各有不一样的风格要求。同时对于总体来说需要合理的根据有限的空间、时间、技术、工艺、物料、成本等条件创造出全新的实用和美观并重的空间。设计理念：从需求转化成事实，着重与客户的沟通，了解客户的期望，贯穿整个项目过程，重视维持构思到落地的平稳持续。设计创意：不只是奢华大气，更多的是惬意和浪漫。经过完美的点缀，精雕细镂的细节处理，带给家人不尽的舒服触感，实际上和谐是欧式的风格的高境地。','2021-5-10',11);
INSERT INTO case_list VALUES(null,'园龙园','http://file.mingdiao.com.cn/sites/default/files/case/20210315sz14_0.jpg','现代简约','五居室',260,150,'都湖国际','财富港设计团队','谢文启','本案业主是一对事业有成，性格温和大气的夫妇，要求简洁有身份感的现代轻奢风格。轻奢是一种自我的态度，低调轻奢风格的空间设计里，看似简洁朴素的外表下折射出一种隐藏着的贵族气息！大理石、金属、木质、皮料、织物......不同材料汇集融合，让人以无限遐想去探寻生活的本质。','2021-5-9',12);
INSERT INTO case_list VALUES(null,'一号公馆','http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_1.jpg','美式风格','五居室',300,40,'深业中城','财富港设计团队','陈增威','通过和业主的交流得知业主是国外回来的，深谙美式风格的魅力 所以我采用了美式很经典的元素搭配深色护墙板，以及在实木的线条上箔金，配合暖色石材，加上纯美式的软装家私，以提高整体的奢华感，高端 大气 浓浓的美式氛围扑面而来。','2021-5-8',13);
INSERT INTO case_list VALUES(null,'翠景山庄','http://file.mingdiao.com.cn/sites/default/files/case/img_0295.jpg','中式风格','五居室',260,180,'都湖国际','富强设计团队','李昌腾','深圳名雕香江分部新中式分翠景山庄五居室实景案例','2021-5-7',14);
INSERT INTO case_list VALUES(null,'天鹅堡','http://file.mingdiao.com.cn/sites/default/files/case/20210512sz16.jpg','现代简约','三居室',122,15,'深业中城','新绿岛设计团队','高超','采用精简、低调内敛的灰是用于家居装扮的首选基调色彩，呈现优雅魅力和精致大气的视觉感官，符合人们对现代生活的审美需求。空间布局上，客餐厅、起居室相连接贯通空间，视觉上十分开阔明朗。给人感觉简单大气，设计费1.1万，工程15万，全包35万。','2021-5-17',15);
INSERT INTO case_list VALUES(null,'美的君兰江山','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__729.jpg','欧式风格','三居室',180,25,'前城滨海花园','新绿岛设计团队','林丽霞','','2021-5-16',16);
INSERT INTO case_list VALUES(null,'红树湾壹号','http://file.mingdiao.com.cn/sites/default/files/case/hong_shu_wan_yi_hao_-mei_shi_qing_she_feng_ge_-ke_ting_.jpg','美式风格','三居室',146,22,'前城滨海花园','新绿岛设计团队','宗金江','业主比较喜欢简约风格，又不失一些线条感，最终的风格确认为美式轻奢，大凡美式风格，因为粗犷的线条和重色，要避免过多的堆叠造成空间和视觉上的拥挤。本案的设计，采用了流行的灰色系，搭配柔光仿大理石砖，使整个空间沉稳不失温馨。浅色艺术涂料和护墙板的加入，缓解了传统美式厚重感，整个格局大气不失精致。','2021-5-21',17);
INSERT INTO case_list VALUES(null,'怡翠晋盛','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__773.jpg','中式风格','三居室',135,16,'前城滨海花园','新绿岛设计团队','贾希涛','','2021-5-22',18);
INSERT INTO case_list VALUES(null,'汇景豪苑','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__64.jpg','法式风格','三居室',147,26,'深业中城','富强设计团队','谢文启','业主是潮州客户，比较喜欢金碧辉煌之感，在设计手法上既有雍容华贵的富足感，又不失惬意美妙的生活气息。 整体的空间动线、功能使用、格局分割、材质选用都呈现出一种和谐与流畅。运用和谐高档的色调与材质交错搭配营造出不同于一般古典居家风格的清净、爽朗，为业主编织、融合出兼具知性与感性、雅致又浪漫的美好生活细节。','2021-4-14',19);
INSERT INTO case_list VALUES(null,'怡翠宏景','http://file.mingdiao.com.cn/sites/default/files/case/wei_xin_tu_pian_202012161528131.jpg','欧式风格','四居室',200,25,'前城滨海花园','富强设计团队','卓华青','欧式风格，整体格调以黄色为主色调，高品质和简约为基础，设计简洁大方，时尚，前卫，优雅，给人温暖舒适的感觉。','2021-5-18',20);
INSERT INTO case_list VALUES(null,'梅溪正荣府','http://file.mingdiao.com.cn/sites/default/files/case/mmexport16171815746051.jpg','现代简约','四居室',189,32,'万科翡翠松湖','富强设计团队','韩鑫桦','遵循断舍离式的居住理念，不仅在为空间做减法，更是为生活做减法。','2021-5-14',21);
INSERT INTO case_list VALUES(null,'锦绣山河','http://file.mingdiao.com.cn/sites/default/files/case/20210512001sz11.jpg','美式风格','四居室',210,38,'万科翡翠松湖','富强设计团队','董政','设计如同量体裁衣，好的设计要“合身”，设计费6.3万，工程38万，全包120万。','2021-5-13',22);
INSERT INTO case_list VALUES(null,'万科中天城市花园','http://file.mingdiao.com.cn/sites/default/files/case/ke_ting__792.jpg','中式风格','四居室',230,23,'万科翡翠松湖','财富港设计团队','谢文启','本案例为新中式风格，将中国传统风格文化意义在当前时代背景下进行演绎，是把中国当代文化充分理解基础上的设计。','2021-5-12',23);
INSERT INTO case_list VALUES(null,'壹方中心玖誉','http://file.mingdiao.com.cn/sites/default/files/case/2yi_fang_jiu_yu_4b2202huang_jie_ke_ting__0.jpg','法式风格','四居室',220,35,'万科翡翠松湖','财富港设计团队','唐光喜','法式轻奢风格讲究点缀在自然中，并不在乎占地面积大小，追求色彩和内在联系，让人感到有很大的活动空间。也有意呈现建筑与周围环境的冲突，崇尚冲突之美。在设计上讲求心灵的自然回归感，给人一种扑面而来的浓郁气息。法式风格装修也是现在很多人选择的。','2021-5-11',24);
INSERT INTO case_list VALUES(null,'富春山居','http://file.mingdiao.com.cn/sites/default/files/case/d398a802d7fb64d603c6d0158f1bfe9.jpg','欧式风格','五居室',420,56,'深业中城','财富港设计团队','陈诚俊','客户要求：本案业主主要是两家人一起住。因为大家都各有不一样的风格要求。同时对于总体来说需要合理的根据有限的空间、时间、技术、工艺、物料、成本等条件创造出全新的实用和美观并重的空间。设计理念：从需求转化成事实，着重与客户的沟通，了解客户的期望，贯穿整个项目过程，重视维持构思到落地的平稳持续。设计创意：不只是奢华大气，更多的是惬意和浪漫。经过完美的点缀，精雕细镂的细节处理，带给家人不尽的舒服触感，实际上和谐是欧式的风格的高境地。','2021-5-10',25);
INSERT INTO case_list VALUES(null,'园龙园','http://file.mingdiao.com.cn/sites/default/files/case/20210315sz14_0.jpg','现代简约','五居室',260,150,'都湖国际','财富港设计团队','谢文启','本案业主是一对事业有成，性格温和大气的夫妇，要求简洁有身份感的现代轻奢风格。轻奢是一种自我的态度，低调轻奢风格的空间设计里，看似简洁朴素的外表下折射出一种隐藏着的贵族气息！大理石、金属、木质、皮料、织物......不同材料汇集融合，让人以无限遐想去探寻生活的本质。','2021-5-9',26);
INSERT INTO case_list VALUES(null,'一号公馆','http://file.mingdiao.com.cn/sites/default/files/case/yi_hao_gong_guan_mei_shi_1.jpg','美式风格','五居室',300,40,'深业中城','财富港设计团队','陈增威','通过和业主的交流得知业主是国外回来的，深谙美式风格的魅力 所以我采用了美式很经典的元素搭配深色护墙板，以及在实木的线条上箔金，配合暖色石材，加上纯美式的软装家私，以提高整体的奢华感，高端 大气 浓浓的美式氛围扑面而来。','2021-5-8',27);
INSERT INTO case_list VALUES(null,'翠景山庄','http://file.mingdiao.com.cn/sites/default/files/case/img_0295.jpg','中式风格','五居室',260,180,'都湖国际','富强设计团队','李昌腾','深圳名雕香江分部新中式分翠景山庄五居室实景案例','2021-5-7',28);







-- 设计团队
-- 设计师资料
CREATE TABLE designers(
    did INT PRIMARY KEY AUTO_INCREMENT,
    team_id INT,
    dname VARCHAR(8),
    dpic VARCHAR(128),
    team VARCHAR(16)
);
INSERT INTO designers VALUES(null,1,'高超','http://file.mingdiao.com.cn/sites/default/files/gao_chao_-1_2.jpg','新绿岛设计团队');
INSERT INTO designers VALUES(null,1,'林丽霞','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/she_ji_shi_zou_xu_ling_.jpg','新绿岛设计团队');
INSERT INTO designers VALUES(null,1,'宗金江','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/lou_ming_.jpg','新绿岛设计团队');
INSERT INTO designers VALUES(null,1,'贾希涛','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/shou_xi_she_ji_shi_tang_guang_xi_.jpg','新绿岛设计团队');
INSERT INTO designers VALUES(null, 2,'卓华青','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/wei_zhao_1.jpg','富强设计团队');
INSERT INTO designers VALUES(null, 2,'韩鑫桦','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/she_ji_shi_xiong_chao_.jpg','富强设计团队');
INSERT INTO designers VALUES(null, 2,'董政','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/she_ji_shi_pu_ze_peng_.jpg','富强设计团队');
INSERT INTO designers VALUES(null, 2,'谢文启','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/lin_cong_-2.jpg','富强设计团队');
INSERT INTO designers VALUES(null, 3,'唐光喜','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/xie_gong_ge_ren_.jpg','财富港设计团队');
INSERT INTO designers VALUES(null, 3,'陈诚俊','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/dong_zheng__0.jpg','财富港设计团队');
INSERT INTO designers VALUES(null, 3,'陈增威','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/she_ji_shi_yi_peng_.jpg','财富港设计团队');
INSERT INTO designers VALUES(null, 3,'李昌腾','http://file.mingdiao.com.cn/sites/default/files/styles/_______209_280_/public/personal/she_ji_shi_zhou_bin_.jpg','财富港设计团队');
-- 设计团队资料
CREATE TABLE designers_team(
    dtid INT PRIMARY KEY AUTO_INCREMENT,
    dtname VARCHAR(16),
    dt_img VARCHAR(128),
    idea VARCHAR(64),
    dtstyle VARCHAR(64),
    dtprod VARCHAR(200),
    dtbelong VARCHAR(32),
    com_site VARCHAR(64),
    com_intro VARCHAR(500),
    dthonor VARCHAR(300),
    design_id INT,
    FOREIGN KEY(design_id) REFERENCES designers(did)
);
INSERT INTO designers_team VALUES(null,'新绿岛设计团队','http://file.mingdiao.com.cn/sites/default/files/ming_diao_shen_zhen_xin_lu_dao_she_ji_tuan_dui_32.jpg','设计源于生活，细节缔造完美','美式、欧式、中式、现代、新古典、英伦风',' 鲸山觐海九期 翡翠海岸 LOFT公馆 珑御府 九号大院 山语清辉 红树别院 三湘海尚 绿景虹湾 栖棠映山 华润城 鲸山觐海 中信红树湾','名雕深圳南山新绿岛分公司','深圳市南山区南山大道与滨海大道交汇处（新绿岛大厦五楼）','
作为名雕第一批成立的分公司-南山新绿岛分公司业绩在全国一直位列前茅，分公司以“设计严苛、细节处理极致、实景落地完美闻名于高端家装行业，以强大的综合实力赢得了业主的广泛青睐。 分部所有设计师均为美术学院或专业院校毕业，综合实力一直处于全国设计团队前端，多次打破名雕业绩记录。全案设计组近期针对新天鹅堡二期、波托菲诺纯水岸、阳光粤海、香山美墅、红树湾一号、壹方中心等高端楼盘做了深入分析和探讨，能给到很多不同的“思路和建议”，也针对红树西岸、中信红树湾、恒浴滨城、翡翠海岸、吉祥龙、曦湾天馥、三湘海尚、锦绣四期、山语清晖、珑御府、鲸山九期、九号大院、曦城、新世界名镌等高端楼盘拍摄了很多“实景落地”的效果。','2011年国际环境艺术创新设计华鼎奖-住宅空间类一等奖、第六届家装样板房大赛优秀作品奖、2018金手指杯华南区总决赛十大商业空间设计奖团队、深圳十大新锐设计师团队、2017第九届中国照明应用设计大赛深圳赛区佳作奖、2015年 获评中国国际室内设计师联合会“创新设计师',1);
INSERT INTO designers_team VALUES(null,'富强设计团队','http://file.mingdiao.com.cn/sites/default/files/fu_qiang_-1600400.jpg','用设计诠释生活，彰显业主品味！','美式、新古典、法式、欧式、中式、现代、地中海','中洲中央公园 中海九号公馆 榕江天御 熙龙湾 御景水岸 勤诚达22世纪 领航城 御景水岸 中信领航 观澜湖高尔夫翡翠湾 桃源居 御龙湾 华联城市全景 深航假日名居','名雕装饰深圳富强分公司','深圳市宝安新中心区裕安一路和宝安大道交汇处宝鸿林大厦702','名雕装饰富强分公司位于宝安新中心区新安街道裕安一路与宝安大道交汇处宝鸿林大厦二楼（平安银行楼上，尚都花园旁边），与宝安中心区相呼应，周边楼盘资源丰富，交通便利。深圳装修公司－名雕富强分公司总营业面积逾1000平方米，现拥有20多名高水平的专业设计人员，10多名德才兼备的管理人员和50多名高素质的员工队伍，秉承“口碑相传、永续经营”的经营理念，坚持以优秀的设计、严格的管理、精湛的工艺、真诚的服务，赢得了每一位客户的信赖。公司信奉“作品就是人品”，“观念决定一切”，“教育和鼓励每一位员工谦虚做人，努力做事”，“金杯、银杯、更重客户口碑”，永远追求品质，成就宝安人高品位家居梦想。作为豪宅业主最信赖的品牌深圳装修公司——名雕富强分公司，坚持名雕集团人文经营、口碑经营的特色，和深圳总部互补互进，倡导的是一种全新的家居文化理念，从精神、品质、设计、服务上紧紧围绕“把家装成一种文化，一种精神，一种健康的生活方式”。富强分部－名雕深圳装修公司目前是宝安区域排名前列的一流设计公司，配备优秀的设计施工团队，培养了一批以“客户至上，品质为先”为工作理念的服务工作人员，欢迎前来咨询。','深圳装修公司优秀设计团队、一体化最佳服务团队',2);
INSERT INTO designers_team VALUES(null,'财富港设计团队','http://file.mingdiao.com.cn/sites/default/files/cai_fu_gang_tuan_ti_zhao_2021640480.jpg','追求艺术与技术的完美结合，设计出最适合客户的作品','欧式、中式、美式、现代、田园、混搭','中洲中央公园 桃源居首府 熙龙湾 御景水岸 榕江天御 中海九号公馆 领航城 振业城 御景水岸 中信领航 观澜湖高尔夫翡翠湾 桃源居 御龙湾 勤诚达22世纪 华联城市全景 深航假日名居','名雕深圳宝安财富港分公司','深圳市宝安区西乡宝源路财富港大厦D座2001AB','名雕装饰财富港分公司位于宝安中心区、大铲港与宝安碧海中心区三圈交集核心，迅速通达沿海高速、广深高速、107国道，交通便利，环境优美，方便广大客户前来咨询、洽谈，为宝安业主提供尊荣服务。作为深圳宝安区的顶尖装修公司，财富港分公司全体员工将潜心研究市场，专心服务周边高端客户，时刻谨记作为宝安区家装行业龙头品牌的使命，秉持“客户利益至上”的原则，以客户满意度为宗旨，让宝安客户群体尊享到华南家装标杆企业所带来的优质、完善的一体化高品质家装服务。','区域最佳业绩奖、优秀团队',3);






-- 品牌动态页
-- 品牌动态页图片表
CREATE TABLE brand_img(
    i_id INT PRIMARY KEY AUTO_INCREMENT,
    state_id INT,
    img_url VARCHAR(128),
    img_des VARCHAR(256)
);
INSERT INTO brand_img VALUES(null,1,'','工程工艺作为家装中重要的一环，也是检验各大装企硬实力的指标之一。作为头部家装企业之一，名雕装饰股份在施工工艺上一直是行业学习的榜样。近日，名雕装饰股份举办的第5届“金钻杯”工程启动大会于5月11日在名雕生态家居产业园隆重启幕。');
INSERT INTO brand_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(16).jpg','会议开场，主持人详细地介绍了此次“金钻杯”工程启动大会的流程和整个活动时间安排。此次活动将由各个片区提供10个工地参与此次评比，其中6个工地由工程总控中心电脑随机抽取，其他4套标杆工地(2套泥水贴砖、2套批灰乳胶漆)由各个片区内部自行选拔提供，用于本次活动评比。');
INSERT INTO brand_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE2(16).jpg','启动仪式上，名雕装饰股份工程部总监蓝晓宁先生为本次大会做动员讲话，他指出：“工程是装修的重中之重，也是客户心中的一大难题，作为品质家装先行者的名雕深谙市场立足法则：唯有卓越的工艺，才能被客户所认可!名雕每一年的“金钻杯”工程大比武活动，是每一位工程匠人专业与匠心的传递。”');
INSERT INTO brand_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE3(11).jpg','大会最后，本届活动全体评委进行了现场宣誓，同时各个片区进行了士气展示，并进行了宣誓：“我们用良心做工程，竭尽全力服务好每一位客户!做好工地上的每一个细节。我们将始终带着这般初心，用身体力行的方式，向业主证明、向市场宣告‘客户满意是评价我们工作的唯一标准’。”');
INSERT INTO brand_img VALUES(null,2,'','燃情五月 耀世启幕　　品质升级 ·全城共鉴');
INSERT INTO brand_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(17).jpg','名雕松山湖分公司新地址，门店地址：松山湖高新技术产业开发区天安云谷A区　　联系电话：400-062-2282');
INSERT INTO brand_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE9(1).jpg','2020年是非常特殊的一年，经历了风浪，也更能体会到家的重要性。所以，我们再次蜕变升级，想给你打造能汲取能量的舒适空间，让你在繁忙中放慢脚步，细细品味生活的怦然心动。');
INSERT INTO brand_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE10(2).jpg','我们尊重设计，也深信设计的力量和价值。我们不断学习，关注最前沿的设计资讯，探索设计领域里空间与尺度、理性与感性的设计逻辑。');
INSERT INTO brand_img VALUES(null,3,'','主办的第五届首席设计师授牌典礼暨第十二届名雕杯颁奖典礼在深圳市博林天瑞喜来登酒店三楼如期举行。');
INSERT INTO brand_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(14).jpg','深圳市室内建筑设计行业协会秘书长杨宇先生、深圳大学美术与设计学院教授及名雕装饰股份独立董事蔡强先生、雅奢主张(D.HOUSE艺术家居品牌)创始人杜恒女士、深圳市家装家居行业协会秘书长张智军先生、名雕装饰股份副总裁任立涛先生、名雕装饰股份经营管理部总监余晓青女士、名雕装饰股份设计委秘书黄忠炎先生、名雕美家世邦运营总监陈明先生、名雕美家世邦销售总监李天涯先生,以及本次颁奖典礼的独家赞助商怡口(中国)副总裁周守文先生出席了此次颁奖典礼。');
INSERT INTO brand_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE3(9).jpg','本次颁奖典礼以设计对话未来，特邀请雅奢主张(D.HOUSE艺术家居品牌)创始人杜恒女士带来“豪宅与艺术”的主题分享。杜恒女士专注室内空间及家具陈设艺术品的设计，倡导“减法设计”，主张“奢侈雅为度”的设计理念。室内设计要以简练的现代语言去呈现一个艺术空间，不囿于现实，也不落于俗套。杜恒女士认为：“当下的豪宅用户见多识广，他们乐于接受多元的文化与艺术，却有着严苛的审美标准，他们真正期待的居所，并不是奢华，而是褪去浮华，重塑生活本真，演绎文化与艺术的艺术居所。');
INSERT INTO brand_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE5(9).jpg','名雕杯获奖成员和嘉宾老师合影留恋');
INSERT INTO brand_img VALUES(null,4,'','梅溪广场分公司,名雕全国业绩冠军');
INSERT INTO brand_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/1(391).jpg','2019年底，名雕装饰正式进驻珠海市，珠海梅溪广场分公司成为名雕装饰在中珠区域珠海地区的第一个分公司。2021年伊始，这个“初生牛犊”的分公司不惧名雕众多实力雄厚的老牌分公司，夺得名雕全国业绩冠军……');
INSERT INTO brand_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/2(345).jpg','名雕装饰股份全国业绩冠军');
INSERT INTO brand_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/5(171).jpg','在这个装满了梅溪广场设计团队活力与工作激情的空间，名雕梅溪广场团队定当坚守品质，以客户为中心，立足珠海，为珠海地区的高端客户提供优质的服务，满足不同客户的家装需求。');
-- 品牌动态页主表
CREATE TABLE brand_state(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    sub_time VARCHAR(32),
    b_title VARCHAR(100),
    img_url VARCHAR(128),
    b_detail INT,
    FOREIGN KEY(b_detail) REFERENCES brand_img(i_id)
);
INSERT INTO brand_state VALUES(null,'2021-5-12','名雕第5届“金钻杯”工程品质交付大比武启动大会隆重启幕','http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(16).jpg',1);
INSERT INTO brand_state VALUES(null,'2021-5-17','耀世启幕·品质升级 ‖ 名雕松山湖分公司乔迁开业','http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(17).jpg',2);
INSERT INTO brand_state VALUES(null,'2021-5-18','名雕装饰股份第五届首席设计师授牌典礼暨第十二届名雕杯颁奖典礼圆满落幕','http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE1(14).jpg',3);
INSERT INTO brand_state VALUES(null,'2021-5-19','梅溪广场分公司——冠军加冕，初生牛犊不畏虎!','http://file.mingdiao.com.cn/sites/default/files/images/1(391).jpg',4);






-- 热装楼盘
CREATE TABLE houses(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    h_title VARCHAR(16),
    h_city VARCHAR(8),
    h_detail VARCHAR(300),
    h_order TINYINT,
    h_sign TINYINT,
    h_finish TINYINT,
    h_img VARCHAR(128)
);
INSERT INTO houses VALUES(null,'深业中城','深圳','深业集团旗下的深业中城项目位于深圳福田区香蜜湖区域，为深圳较早的成熟高端居住区之一。项目地块南邻深圳经典豪宅东海花园二期福禄居，北面为正在建设中占地43万平方米的香蜜公园，西面即是东海城市广场，占据着深南大道车公庙办公区与香蜜湖高档住宅区的过渡区域。深业中城共分三期开发，一期为22层高办公楼；二期为28-29层高的高档豪宅；三期为39-40层高的高层豪宅以及超高层公寓及办公楼。根据规划图显示，项目超高层公寓建筑高度暂定为240米，比周边招商银行大厦高出3米，比深业集团在售项目深业上城高出16米，建成之后将成为仅次于东海国际公寓的深圳超高层公寓建筑。',18,8,2,'http://file.mingdiao.com.cn/sites/default/files/fucosbuilding/shen_ye_zhong_cheng_-1.jpg');
INSERT INTO houses VALUES(null,'前城滨海花园','深圳','项目位于前海生活区，是目前最适宜居住的区域。前海中心属于国家级战略级别，是珠三角城市一体化区域中心，也是中国唯一的金融体制创新示范区，总规划投资额超过万亿。其未来的地位将远超福田CBD，成为世界级的金融中心，目前是全国最具升值潜力的区域。',27,11,5,'http://file.mingdiao.com.cn/sites/default/files/fucosbuilding/qcc-1.jpg');
INSERT INTO houses VALUES(null,'万科翡翠松湖','深圳','万科东新翡翠松湖总占地约10万㎡，总建面约26万㎡，涵盖了别墅、洋房和沿街商业。项目位于松山湖片区，地理位置十分优越。莞惠城轨寮步站约1.5公里（已开通），莞深、莞樟、石大路路网纵贯，至虎门高铁站、东莞火车站、广深机场十分便利。',15,10,5,'http://file.mingdiao.com.cn/sites/default/files/fucosbuilding/mo_ke_fei_cui_song_hu_.jpg');
INSERT INTO houses VALUES(null,'都湖国际','广州','都湖国际位于广州市花都湖畔，尊享4300亩至臻城央湖景，是花都区府板块的标杆湖居豪宅社区。以超高绿化率的自然生态园林与花都湖公园融为一体，超宽楼距沿湖开阳布局，享有环湖全维度风景线。 都湖国际项目总占地近13万㎡，总建筑面积约36万㎡，容积率2.8，绿化率达46%，计划分二期开发，首期包含86-160㎡的两房至四房，以及少量天际湖景大宅 。',15,10,9,'http://file.mingdiao.com.cn/sites/default/files/fucosbuilding/du_hu_guo_ji_.jpg');






-- 客户心声
-- 客户心声详情图文表
CREATE TABLE client_img(
    i_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    img_url VARCHAR(128),
    img_desc VARCHAR(256)
);
INSERT INTO client_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/20210427sz001-1.jpg','一盏茶、一缕阳光汲取来自生活的点滴养分滋养出幸福的氤氲与盛放……心存美好，向阳而生在一套自己喜欢的房子享受自己想要的生活这就是生活最美的样子！');
INSERT INTO client_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/20210427sz001-2.jpg','在此之前，郭总对名雕也是略有了解，当郭总真正深入了解名雕之后，便放心地把新家交给了名雕。精选自世界各地一线品牌的材料，挂满证书的专利墙……名雕强大的生态家居产业链、研发创新能力，让郭总对名雕一体化保障效果还原落地的能力更有信心。');
INSERT INTO client_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/20210427sz001-3.jpg','在设计上，偏爱新中式的郭总，结合之前楼下房子装修设计上的一些不方便，设计师王工很快就把设计方案敲定了。因为新家就在楼上，装修过程中郭总会经常到工地，看着新家的效果一步一步还原，很温馨，很满意。');
INSERT INTO client_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/20210427sz001-4.jpg','在请郭总给名雕服务评分的时候，郭总毫不犹豫打了95分，而且很愿意也很有信心，把名雕推荐给身边需要装修新家的朋友。');
INSERT INTO client_img VALUES(null,1,'http://file.mingdiao.com.cn/sites/default/files/images/20210427sz001-5.JPG','深圳华商分公司经理王同艳/业主郭总/项目经理何启龙');
INSERT INTO client_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE6(12).jpg','“名雕的设计师以及现场的总工，在很多细节方面给了我启发，也做了一些修改。那么这些在其他装修公司是很少见的，尤其一些新的理念，也给我很大惊喜。”名雕在品质上有着严格的追求，对于细节的考究、不计成本的精琢，是名雕品质与实力的彰显，也是对客户最好的呈现。');
INSERT INTO client_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE11(3).jpg','“以前装修就是找一些品牌比较小的装修公司，名雕作为一个上市公司，整体的设计团队、施工团队是比较正规化的。远程监视的工程管理也是相当不错，很满意，很满意。”在工程质量方面，每个工程人员都严格管控工作的中的每一个细节，提前规避任何一个会出现安全风险的可能性，做内部的巡检，细化拆分区域要求，以更高的标准要求自己。');
INSERT INTO client_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE12(2).jpg','“装修的体验是相当好，那么过程的话也都沟通得很愉快，整体装修效果比当初设计的效果还更加人性化。”居所的品质，不止是产品的硬核实力，更多的是对客户内心理想的洞悉与优质服务的提供。每一位客户的选择、信任，也都将淬炼成名雕最硬核的实力名片。');
INSERT INTO client_img VALUES(null,2,'http://file.mingdiao.com.cn/sites/default/files/images/%E5%9B%BE8(4).jpg','每一人心中都有对家的热爱及向往，每一位客户心中都有居家的美好期待，遇见名雕，一砖一瓦都是诗意的感动与从容。');
INSERT INTO client_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/8(80).jpg','装修现场');
INSERT INTO client_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/9(72).jpg','徐女士新居完工实景');
INSERT INTO client_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/12(49).jpg','▲项目经理对徐女士家进行检修▲');
INSERT INTO client_img VALUES(null,3,'http://file.mingdiao.com.cn/sites/default/files/images/13(36).jpg','有一种品质叫口碑相传，徐女士因为设计方案，“一见钟情”选择了名雕，名雕也用品质与服务回馈徐女士，赢得了徐女士的信任与推荐。');
INSERT INTO client_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/2(357).jpg','坚持选择名雕，“名雕是上市大品牌”，选择值得的，为幸福品质加码，在选择装修公司的时候，夏小姐的爱人就一定要名雕，原因很简单，名雕是上市公司，又是老牌，比较靠谱。');
INSERT INTO client_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/7(94).jpg','厨房 装修前↑ 装修后↓');
INSERT INTO client_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/8(76).jpg','变化非常大');
INSERT INTO client_img VALUES(null,4,'http://file.mingdiao.com.cn/sites/default/files/images/5(178).jpg','让美好的想象在现实相逢，质造每一家每一户的幸福未来，名雕一体化与您一起打造极致生活');
-- 客户心声主表
CREATE TABLE client_estimate(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    c_title VARCHAR(64),
    c_time VARCHAR(16),
    c_smallimg VARCHAR(128),
    c_desc VARCHAR(256),
    c_detail INT,
    FOREIGN KEY(c_detail) REFERENCES client_img(i_id)
);
INSERT INTO client_estimate VALUES(null,'【名雕锦绣山河作品】流光千年印古意，惊艳时光的东方韵味！','2021-4-27','http://file.mingdiao.com.cn/sites/default/files/styles/________300_214_/public/service_list/20210427222-1.jpg','一盏茶、一缕阳光汲取来自生活的点滴养分滋养出幸福的氤氲与盛放……心存美好，向阳而生在一套自己喜欢的房子享受自己想要的生活这就是生活最美的样子！',1);
INSERT INTO client_estimate VALUES(null,'帝景中央萧先生：名雕落地效果相当不错，超出预期!','2021-5-1','http://file.mingdiao.com.cn/sites/default/files/styles/________300_214_/public/service_list/feng_mian_.jpg','云集的品质住宅区中，名雕高端家装究竟有何吸引力，能够成为城市高净值人群的共同选择?聆听客户真实的声音，告诉你答案——',2);
INSERT INTO client_estimate VALUES(null,'名雕业主专访|始于“颜值”，陷于“才华”，忠于“人品”','2021-5-2','http://file.mingdiao.com.cn/sites/default/files/styles/________300_214_/public/service_list/feng_mian__0.jpg','位于大信海岸家园的这套150㎡二手房，采光通透、格局方正，但原始的设计掩盖了旧房的优点，将旧房翻新为高级轻奢的欧式风，是徐女士对新家的设想，徐女士与丈夫都忙于工作，于是选择将新家全权交给名雕。',3);
INSERT INTO client_estimate VALUES(null,'【壹城中心名雕客户专访】装修新家之前，不妨先看看邻居们怎么说','2021-5-3','http://file.mingdiao.com.cn/sites/default/files/styles/________300_214_/public/service_list/20210417dzwaf-1.jpg','写给壹城中心的邻居们，新家，只选对的，幸福生活，就是触手可及，在您众多的邻居中，已有200多位高品位业主选择我们，我们精心挑选了其中的6位代表，快来参观他们的新家吧。',4);





-- 用户列表
CREATE TABLE user_list (
    u_id INT PRIMARY KEY  AUTO_INCREMENT,
    uname VARCHAR(16),
    upwd VARCHAR(16)
);
INSERT INTO user_list VALUES(null,'dingding','123456');
INSERT INTO user_list VALUES(null,'huahua','123456');