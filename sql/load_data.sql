USE internet_tv;

-- Users.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Users.csv'
INTO TABLE Users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Channel.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Channel.csv'
INTO TABLE Channel
CHARACTER SET utf8
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Programs.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Programs.csv'
INTO TABLE Programs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Seasons.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Seasons.csv'
INTO TABLE Seasons
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Episodes.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Episodes.csv'
INTO TABLE Episodes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Broadcasts.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Broadcasts.csv'
INTO TABLE Broadcasts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Views.csvのデータをインポート
LOAD DATA INFILE '/var/lib/mysql-files/Views.csv'
INTO TABLE Views
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
