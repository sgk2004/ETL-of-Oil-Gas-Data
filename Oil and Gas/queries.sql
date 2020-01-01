
SELECT * FROM energy_gdp;
SELECT * FROM oil_production;
SELECT * FROM ng_production;

--JOIN 3 tables
SELECT *
FROM energy_gdp as e
JOIN oil_production as o 
ON e.state= o.states
JOIN ng_production as ng
ON o.states = ng.states;

--JOIN 2 tables
SELECT * 
FROM oil_production as o
JOIN ng_production as ng
ON o.states = ng.states;

SELECT * 
FROM energy_gdp as e
JOIN ng_production as ng
ON e.state = ng.states;



