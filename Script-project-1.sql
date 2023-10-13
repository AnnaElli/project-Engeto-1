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



