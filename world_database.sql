# ZACK SLACK BONUSES

# ----PERCENTAGE OF LANGUAGES SPOKEN IN SANTA MONICA

SELECT
  lang.Language   AS 'Language',
  lang.Percentage AS 'Percentage'
FROM world.countrylanguage AS lang
  JOIN world.city AS city ON city.CountryCode = lang.CountryCode
WHERE city.Name = 'Santa Monica';

# ----NUM OF COUNTRIES IN THESE REGIONS

SELECT
  country.Region AS 'Region',
  count(*)       AS 'num_countries'
FROM world.country AS country
GROUP BY Region;

# ---POPULATION OF EACH REGION

SELECT
  Region          AS 'Region',
  sum(Population) AS 'Population'
FROM country
GROUP BY Region;

# --POPULATION OF EACH CONTINENT

SELECT
  Continent       AS 'Continent',
  sum(Population) AS 'Population'
FROM country
GROUP BY Continent;

# ---LIFE EXPECTANCY GLOBALY

SELECT
  avg(LifeExpectancy) AS 'Average life expectancy'
FROM world.country;

# --LIFE EXPECTANCY FOR EACH REGION

SELECT
  Continent AS 'Cotinent',
  AVG(LifeExpectancy) AS 'Life Expectancy'
FROM country
  WHERE LifeExpectancy > 0
GROUP BY Continent;
