USE team;
CREATE TABLE more(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imgs VARCHAR(50),
    title VARCHAR(32),
	details VARCHAR(150),
	p1 VARCHAR(20),
	p2 VARCHAR(20),
	p3 VARCHAR(20)
);
INSERT INTO more VALUES 
(null,'pic/01.jpg','苦瓜猪肉高汤蛋饼','煎鸡蛋的香味已经足够吸引人了，再放入那么多食材一起煎成蛋卷，让美味再次升级。','早餐','蛋类','营养早餐')
