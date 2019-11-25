--sample sql queries on the Agri_and_Temp_db

--checking all tables have entries
SELECT *
FROM country_tbl;

SELECT *
FROM price_tbl;

SELECT *
FROM product_tbl;

SELECT *
FROM production_tbl;

SELECT *
FROM temperature_tbl;

--sample queries per table
--counting how many countries are in the db with names starting with A
SELECT COUNT("countryCODE")
FROM country_tbl
WHERE "countryNAME" LIKE 'A%';

--checking the production of all agri products on a single country
SELECT *
FROM production_tbl
WHERE "countryCode" = 'PHL';

--checking the average global temperature during year 2000
SELECT AVG("Y2000") AS "2000 Ave Global Temp"
FROM temperature_tbl;

--checking the price changes during 2008-2012 of products with productIDs of 2600's
SELECT "productID", "Y2012", "Y2011", "Y2010", "Y2009", "Y2008"
FROM price_tbl
WHERE "productID" BETWEEN '2600' AND '2700';

--checking the max temperature during year 2012
SELECT MAX("Y2012") AS "2012 Max Temp"
FROM temperature_tbl;

--checking the total global production of a single agri product on a single year
SELECT SUM("Y2012") AS "2012 Global Wheat Production"
FROM production_tbl
WHERE "productID" = '2511';

--joining tables
SELECT *
FROM country_tbl
LEFT JOIN production_tbl ON production_tbl."countryCode"=country_tbl."countryCODE";

--filtering countries with no temperature readings
SELECT *
FROM country_tbl
LEFT JOIN temperature_tbl ON temperature_tbl."countryCODE"=country_tbl."countryCODE"
WHERE temperature_tbl."Y2012" IS NOT NULL;

--querying the top 10 corn producers during 2012
SELECT product_tbl."productID", "product_name", "countryCode", "Y2012"
FROM product_tbl
LEFT JOIN production_tbl ON production_tbl."productID"=product_tbl."productID"
WHERE product_tbl."productID" = '2514'
ORDER BY "Y2012" DESC
LIMIT 10;

--filtering agri products with no reported price
SELECT *
FROM product_tbl
LEFT JOIN price_tbl ON CAST (price_tbl."productID" AS int)=product_tbl."productID"
WHERE price_tbl."Y2012" IS NOT NULL;

--determining the highest priced agri product on 2012
SELECT product_tbl."productID","product_name", "Y2012"
FROM price_tbl
LEFT JOIN product_tbl ON CAST (price_tbl."productID" AS int)=product_tbl."productID"
WHERE "Y2012" = (
    SELECT MAX("Y2012")
	FROM price_tbl
);

--determining the highest priced agri product on 1992
SELECT product_tbl."productID","product_name", "Y1992"
FROM price_tbl
LEFT JOIN product_tbl ON CAST (price_tbl."productID" AS int)=product_tbl."productID"
WHERE "Y1992" = (
    SELECT MAX("Y1992")
	FROM price_tbl
);

