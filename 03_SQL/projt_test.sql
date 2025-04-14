ｃｒ
use crawl;

select * from accidentstatsage;
select * from agegroup;
# DELETE FROM accidentstatstime;
# drop table accidentstatsage;
DROP TABLE IF EXISTS accidentstatsage;
-- CREATE TABLE AccidentStatsAge (
--     id VARCHAR(50) PRIMARY KEY,
--     age_group_range VARCHAR(50) NOT NULL,
--     year_type_id VARCHAR(30) NOT NULL,
--     accident_type_name VARCHAR(30) NOT NULL,
--     accident_count INT NOT NULL,
--     injury_count INT NOT NULL,
--     death_count INT NOT NULL,
--     FOREIGN KEY (age_group_range) REFERENCES AgeGroup(age_range),
--     FOREIGN KEY (year_type_id) REFERENCES YearType(id),
--     FOREIGN KEY (accident_type_name) REFERENCES AccidentType(type_name)
-- );

CREATE TABLE accidentstatsage (
    id VARCHAR(50) PRIMARY KEY,
    age_group_range VARCHAR(50) NOT NULL,
    year_type_id VARCHAR(30) NOT NULL,
    accident_type_name VARCHAR(30) NOT NULL,
    accident_count INT NOT NULL,
    injury_count INT NOT NULL DEFAULT 0,
    death_count INT NOT NULL DEFAULT 0,
    FOREIGN KEY (age_group_range) REFERENCES AgeGroup(age_range),
    FOREIGN KEY (accident_type_name) REFERENCES AccidentType(type_name),
    FOREIGN KEY (year_type_id) REFERENCES YearType(id)
);

SELECT * FROM AgeGroup;

-- 연령대
INSERT IGNORE INTO AgeGroup (age_range) VALUES
('20세이하'),
('21~30세'),
('31~40세'),
('41~50세'),
('51~60세'),
('61~64세'),
('65세이상'),
('연령불명');



-- 사고유형
INSERT INTO AccidentType (type_name) VALUES
('차대사람'),
('차대차'),
('차량단독'),
('철길건널목');

-- 연도
INSERT INTO YearType (id) VALUES
('2014'), ('2015'), ('2016'), ('2017'), ('2018'),
('2019'), ('2020'), ('2021'), ('2022'), ('2023');

