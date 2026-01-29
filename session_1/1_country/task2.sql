-- Task 2

.mode columns
.width 30
.headers on

-- 1. The 10 most populated countries.

-- SELECT Country, Population FROM countries ORDER BY Population DESC LIMIT 10;

-- 2. The smallest 5 countries by area.

-- SELECT Country, AreaSqMi FROM countries ORDER BY AreaSqMi ASC LIMIT 5;

-- 3. The largest country in Europe

-- SELECT Country FROM countries ORDER BY AreaSqMi DESC LIMIT 1;

-- 4. The smallest 3 countries in Africa

-- SELECT Country, AreaSqMi FROM countries WHERE Continent = 'Africa' ORDER BY AreaSqMi ASC LIMIT 3;

-- 5. The 5 countries with the lowest literacy rate.

-- SELECT Country FROM countries ORDER BY LiteracyPercent ASC LIMIT 5;

-- 6. The 3 richest (by GDP) countries beginning with ‘C’.

-- SELECT Country, GDPPerCapita FROM Countries WHERE Country LIKE 'C%' ORDER BY GDPPerCapita DESC LIMIT 3;

-- 7. The country with the highest literacy rate with an infant mortality rate above 50.

-- SELECT Country FROM countries WHERE InfantMortalityPer1000 > 50 ORDER BY LiteracyPercent DESC LIMIT 1;

-- 8. The 5 countries with the lowest phones per 1000 population with a GDP above 10000.

-- SELECT Country FROM countries WHERE GDPPerCapita > 10000 ORDER BY PhonesPer1000 ASC LIMIT 5;

-- 9. The richest landlocked country in South America.

-- SELECT Country FROM countries WHERE Continent = 'South America' AND CoastlineRatio = 0 ORDER BY GDPPerCapita DESC LIMIT 1;

-- 10. The last 10 countries alphabetically.

SELECT Country FROM countries ORDER BY Country DESC LIMIT 10;
