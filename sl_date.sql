select * from SL_db.sl_db;

-- 1. 전체 데이터에서 모든 컬럼을 조회하되, 홈런갯수를 기준으로 내림차순 정렬하세요.
SELECT 
    *
FROM
    SL_db.sl_db
ORDER BY HOMERUN DESC;

-- 2. LOCATION이 'HOME'인 데이터의 YEAR, HR, AVG만 뽑아보세요.
SELECT 
    LOCATION, YEAR, HOMERUN, BATTING_AVG
FROM
    SL_db.sl_db
WHERE
    LOCATION = 'HOME';

-- 3. **AVG(타율)**가 0.270 이상인 데이터만 조회하세요.
SELECT 
    *
FROM
    SL_db.sl_db
WHERE
    BATTING_AVG >= 0.270;

-- 4. YEAR가 2024년이고, LOCATION이 'AWAY'인 데이터의 모든 정보를 조회하세요.
SELECT 
    *
FROM
    SL_db.sl_db
WHERE
    YEAR = 2024 AND LOCATION = 'AWAY';

-- 5. LOCATION별로 **HR(홈런)**의 총합을 구하세요. (컬럼명은 total_hr로 별칭을 주세요)
SELECT 
    LOCATION, SUM(HOMERUN) AS total_hr
FROM
    SL_db.sl_db
GROUP BY LOCATION;

-- 6. LOCATION별로 **AVG(타율)**의 평균치를 구하고, 평균 타율이 높은 순서대로 정렬하세요.
SELECT 
    LOCATION, AVG(BATTING_AVG) AS AVG
FROM
    SL_db.sl_db
GROUP BY LOCATION
ORDER BY AVG DESC;


-- 7. YEAR별로 전체 **HR(홈런)**의 합계를 구하세요. (홈/원정 합산 홈런)
SELECT 
    YEAR, SUM(HOMERUN) AS 'HOMERUN_SUM'
FROM
    SL_db.sl_db
GROUP BY YEAR;

-- 8. LOCATION별로 **H(안타)**의 평균을 구하되, 평균 안타가 670개 이상인 그룹만 화면에 출력하세요.
SELECT 
    LOCATION, AVG(HIT)
FROM
    SL_db.sl_db
GROUP BY LOCATION
HAVING AVG(HIT) >= 670;

-- 9. 전체 데이터 중 OPS가 가장 높은 순서대로 상위 3개만 조회하세요.
SELECT 
    *
FROM
    SL_db.sl_db
ORDER BY OPS DESC
LIMIT 3;


-- 10. LOCATION이 'AWAY'인 데이터 중에서, YEAR를 기준으로 오름차순 정렬했을 때 가장 첫 번째 데이터 하나만 뽑아보세요.
select *
from SL_db.sl_db
where LOCATION = 'AWAY' 
order by year
limit 1;