SELECT countries.name, countries.capital
FROM countries JOIN continents
ON countries.continent_id = continents.id
WHERE continent_name = 'Europe';