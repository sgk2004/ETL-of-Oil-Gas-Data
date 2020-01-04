
SELECT * FROM energy_data;
SELECT * FROM crude_oil;
SELECT * FROM natural_gas;
SELECT * FROM gdp;

--JOIN 4 tables
SELECT g.state,g.year,g.gdp,o.oil_production,
	ng.naturalgas_production,ec.fossilfuel_consumption,
	ec.natgas_consumption,ec.lpg_consumption
FROM gdp as g
JOIN crude_oil as o 
ON g.state= o.state AND g.year= o.year
JOIN natural_gas as ng
ON o.state = ng.state AND ng.year= o.year
JOIN energy_data as ec
ON ec.state = ng.state AND ng.year= ec.year;





