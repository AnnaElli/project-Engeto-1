-- Vytvořit novou tabulku t_cechia_price_ap --

CREATE TABLE t_chechia_price_ap AS
SELECT 
      value,
      category_code,
      date_from,
      region_code
FROM czechia_price;

-- Vytvořit v tabulce nový sloupec--

ALTER TABLE t_chechia_price_ap
ADD COLUMN year_price INT;

-- Dát rok ze sloupce date_from do sloupce year_price --

UPDATE t_chechia_price_ap
SET year_price = year (date_from);

-- Přejmenovat sloupec value na value_price v tabulce t_czechia_price_ap--

ALTER TABLE t_czechia_price_ap 
CHANGE COLUMN value value_price INT (11);

-- Vytvořit tabulku t_anna_petuchova_project_sql_primary_final--

CREATE TABLE t_anna_petuchova_project_sql_primary_final as
SELECT 
      czp.value, 
      czp.calculation_code,
      czp.industry_branch_code,
      czp.payroll_year,
      czp.payroll_quarter,
      cp.value_price,
      cp.category_code,
      cp.date_from,
      cp.year_price
FROM czechia_payroll as czp
RIGHT JOIN t_czechia_price_ap as cp
ON czp.payroll_year = cp.year_price
WHERE czp.unit_code = '200';


-- Vytvořit tabulku t_countries_ap--

CREATE TABLE t_countries_ap AS
SELECT*
FROM countries
WHERE continent = 'Europe';

-- vytvořit tabulku t_anna_petuchova_project_sql_secoundary_final--

CREATE TABLE t_anna_petuchova_project_sql_secoundary_final AS
SELECT
      tca.country,
      tca.population,
      e.gdp,
      e.gini
FROM t_countries_ap AS tca
LEFT JOIN economies AS e
ON tca.country = e.country
WHERE e.year BETWEEN 2006 AND 2018
ORDER BY e.year;

-- otázka 1--

SELECT*
FROM czechia_payroll_industry_branch;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'A'
GROUP BY payroll_year;


SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'B'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'C'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'D'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'E'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'F'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'G'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'H'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'I'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'J'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'K'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'K'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'L'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'M'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'N'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'O'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'P'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'Q'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'R'
GROUP BY payroll_year;

SELECT 
     industry_branch_code,
     payroll_year,
     AVG(value) AS prumer
FROM t_anna_petuchova_project_sql_primary_final 
WHERE unit_code = 200
AND industry_branch_code = 'S'
GROUP BY payroll_year;



