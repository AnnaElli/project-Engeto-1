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

