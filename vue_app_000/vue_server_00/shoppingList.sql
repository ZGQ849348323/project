SET NAMES UTF8;
DROP DATABASE IF EXISTS shopping;
CREATE DATABASE shopping CHARSET=UTF8;
USE shopping;
CREATE TABLE clothing(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price float(10),
    p1 float(10),
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50),
    img1 VARCHAR(50),
    img2 VARCHAR(50),
    img3 VARCHAR(50)
);

INSERT INTO clothing VALUES 
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg');

CREATE TABLE mask(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price float(10),
    p1 float(10),
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50)
);
INSERT INTO mask VALUES 
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg');

CREATE TABLE shoe(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price float(10),
    p1 float(10),
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50)
);
INSERT INTO shoe VALUES 
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg');

CREATE TABLE bag(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price float(10),
    p1 float(10),
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50)
);
INSERT INTO bag VALUES 
(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg');


CREATE TABLE list(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price float(10),
    p1 float(10),
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50),
    img1 VARCHAR(50),
    img2 VARCHAR(50),
    img3 VARCHAR(50)
);

INSERT INTO list VALUES 
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),

(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),

(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),


(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),

-- 第二次
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),

(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),

(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),


(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),

-- 第三次
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,138,2.38,'秋装日系复古水洗浅色牛仔外套男潮流宽松牛仔翻领夹克青年牛仔衣',68,'/img/clothing.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,88,2.88,'夏季日系复古拼色插肩袖休闲短袖衫新款学生情侣宽松圆领T恤男潮',48,'/img/clothing1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,195,8.1,'男装秋季加厚套头麻花毛衣男宽松慵懒风日系休闲粗毛线针织衫男潮',65,'/img/clothing2.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,124.50,2.88,'男裤夏季薄款裤子男休闲九分裤男宽松直筒休闲裤男潮流百搭锥形裤',78,'/img/clothing3.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,158,2.98,'秋装基础款休闲字母印花连帽卫衣男日系潮流学生宽松外套情侣卫衣',88,'/img/clothing4.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),

(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,85,2.98,'韩国JAYJUN水光针面膜贴 三部曲樱花玻尿酸植物玫瑰保湿补水正品',48,'/img/mask.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,169,8.98,'博乐达超分子水杨酸滋养调理面膜祛痘淡印去闭口粉刺黑头医院同款',78,'/img/mask1.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),

(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,328,2.98,'方根单鞋女2019新款春秋方头皮鞋黑色粗跟真皮大码女鞋41 42 33码',228,'/img/shoe1.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,198,2.98,'2019春夏季新款白色尖头后空中跟凉鞋女粗跟百搭方根真皮气质单鞋',120,'/img/shoe3.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,178,2.58,'2019秋季新款方根单鞋时尚系带真皮百搭小皮鞋方头复古英伦风女鞋',110,'/img/shoe2.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,188,2.58,'【老果家】夏季新品超闪水钻带方根凉鞋女 粗跟套趾细带女鞋中跟',145,'/img/shoe.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),


(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg'),
(null,659,12.98,'PECO独立设计715建筑系列原创复古宽肩带迷你水桶包小众高级撞色',480,'/img/bag.jpg','/img/clothing1_1.jpg','/img/clothing1_2.jpg','/img/clothing1_3.jpg'),
(null,109,5.98,'Mr.ace homme中学生书包印花双肩包女学院风电脑包背包旅行女包',68,'/img/bag1.jpg','/img/clothing2_1.jpg','/img/clothing2_2.jpg','/img/clothing2_3.jpg'),
(null,78,2.78,'欧美时尚情侣背包男士女大学生滑板书包韩版潮牌原宿风旅行双肩包',48,'/img/bag2.jpg','/img/clothing3_1.jpg','/img/clothing3_2.jpg','/img/clothing3_3.jpg'),
(null,129,6.98,'Mr.ace Homme双肩包女学生书包升级版纯色背包酒红色防水电脑包男',98,'/img/bag3.jpg','/img/clothing4_1.jpg','/img/clothing4_2.jpg','/img/clothing4_3.jpg'),
(null,109,2.58,'mracehomme日本小背包潮时尚大学生ins超火旅游双肩包女韩版书包',58,'/img/bag4.jpg','/img/clothing_1.jpg','/img/clothing_2.jpg','/img/clothing_3.jpg');


-- 创建购物车的列表
-- #完成功能购物车
-- #id,    购物车项目id
-- #count  购物车项目数量
-- #title  商品名称
-- #discount, INT
-- imgurl 商品图片
-- bol 0或者1选中商品
CREATE TABLE shoppingCar(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- bol INT,
	count INT,
    title VARCHAR(50),
    discount INT,
    imgurl VARCHAR(50)
);




CREATE TABLE req(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(15),
    upwd INT,
    age INT,
    sex INT
);
