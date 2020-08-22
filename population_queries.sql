-- How many entries in the database are from Africa?

SELECT COUNT( * ) AS 'Total countries in Africa'
	FROM countries
	WHERE continent = 'Africa';

-- What was the total population of Oceania in 2005?

SELECT SUM(population) AS 'Total pop Oceania 2005'
	FROM population_years
	JOIN countries
		ON population_years.country_id = countries.id
	WHERE countries.continent = 'Oceania'
		AND population_years.year = 2005;

-- What is the average population of countries in South America in 2003?

SELECT AVG(population) AS 'AvgPop South America 2003'
	FROM population_years
	JOIN countries
		ON population_years.country_id = countries.id
	WHERE countries.continent = 'South America'
		AND population_years.year = 2003;

-- What country had the smallest population in 2007?

SELECT countries.name, MIN(population) 
	FROM population_years
	JOIN countries
		ON population_years.country_id = countries.id
	WHERE population_years.year = 2007;

-- What is the average population of Poland during the time period covered by this dataset?

SELECT AVG(population) AS 'AvgPop Poland'
	FROM population_years
	JOIN countries
		ON population_years.country_id = countries.id
	WHERE countries.name = 'Poland';

-- How many countries have the word "The" in their name?

SELECT COUNT(*)
	FROM countries
	WHERE name LIKE '%, The%';

-- What was the total population of each continent in 2010?

SELECT countries.continent, SUM(population) AS 'AvgPop Poland'
	FROM population_years
	JOIN countries
		ON population_years.country_id = countries.id
	WHERE population_years.year = 2010
	GROUP BY 1;