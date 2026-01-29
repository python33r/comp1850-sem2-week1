-- Task 1

.mode columns
.width 30
.headers on

-- 1. Retrieve all data from the countries table.

-- SELECT * from countries;

-- 2. Select only the Country and Population columns.

-- SELECT Country, Population FROM countries;

-- 3. Find all country names in Europe.

-- SELECT Country FROM countries WHERE Continent = 'Europe';

-- 4. Find all countries with a population greater than 100 million.

-- SELECT Country, Population from countries WHERE Population > 100000000;

-- 5. Find countries in Asia with a GDP per capita greater than 20,000.

-- SELECT Country, GDPPerCapita FROM countries WHERE Continent = 'Asia' AND GDPPerCapita > 20000;

-- 6. Find all countries where the literacy rate is below 70%.

-- SELECT Country, LiteracyPercent FROM countries WHERE LiteracyPercent < 70;

-- 7. Find all countries with a coastline ratio of exactly 0 (landlocked countries)

-- SELECT Country FROM countries WHERE CoastlineRatio = 0;

-- 8. Find countries with names starting with 'A'.

-- SELECT Country FROM countries WHERE Country LIKE 'A%';

-- 9. Find countries with "United" in their name.

-- SELECT Country FROM countries WHERE Country LIKE '%United%';

-- 10. Find countries where the birthrate is higher than the death rate AND the population is over 50 million.

SELECT Country FROM countries WHERE Birthrate > Deathrate AND Population > 50000000;
