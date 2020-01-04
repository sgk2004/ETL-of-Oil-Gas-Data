--Drop Tables if exists
DROP TABLE IF EXISTS GDP;
DROP TABLE IF EXISTS oil_production;
DROP TABLE IF EXISTS natgas_production;
DROP TABLE IF EXISTS energy_consumption;


-- Create tables for gdp data to be loaded into
CREATE TABLE GDP (
	state VARCHAR(20)  NOT NULL,
	year INT NOT NULL,
	gdp FLOAT NOT NULL,
	PRIMARY KEY (state, year)
);

-- Create tables for crude oil production data to be loaded into
CREATE TABLE crude_oil (
	state VARCHAR(20)  NOT NULL,
	year INT NOT NULL,
	oil_production FLOAT NOT NULL,
	PRIMARY KEY (state, year)
);


-- Create tables for natural gas production to be loaded into
CREATE TABLE natural_gas (
	state VARCHAR(20)  NOT NULL,
	year INT NOT NULL,
	naturalgas_production FLOAT NOT NULL,
	PRIMARY KEY (state, year)
);



-- Create tables for energy consumption to be loaded into
CREATE TABLE energy_data (
	state VARCHAR(20)NOT NULL,
	year INT NOT NULL,
	fossilfuel_consumption FLOAT NOT NULL,
	natgas_consumption FLOAT NOT NULL,
	lpg_consumption FLOAT NOT NULL,
	PRIMARY KEY (state, year)
		
);