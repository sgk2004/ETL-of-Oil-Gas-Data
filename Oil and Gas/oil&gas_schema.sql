--Drop Tables if exists
DROP TABLE IF EXISTS oil_production;
DROP TABLE IF EXISTS ng_production;
DROP TABLE IF EXISTS energy_gdp;


-- Create tables for raw data to be loaded into
CREATE TABLE energy_gdp (
	
	state VARCHAR(20)  NOT NULL,
	gdp2010 FLOAT NOT NULL,
	gdp2011 FLOAT NOT NULL,
	gdp2012 FLOAT NOT NULL,
	gdp2013 FLOAT NOT NULL,
	gdp2014 FLOAT NOT NULL,
	fossfuelc2010 FLOAT NOT NULL,
	fossfuelc2011 FLOAT NOT NULL,
	fossfuelc2012 FLOAT NOT NULL,
	fossfuelc2013 FLOAT NOT NULL,
	fossfuelc2014 FLOAT NOT NULL,
	natgasc2010   FLOAT NOT NULL,
	natgasc2011   FLOAT NOT NULL,
	natgasc2012   FLOAT NOT NULL,
	natgasc2013   FLOAT NOT NULL,
	natgasc2014   FLOAT NOT NULL,
	lpgc2010      FLOAT NOT NULL,
	lpgc2011      FLOAT NOT NULL,
	lpgc2012      FLOAT NOT NULL,
	lpgc2013      FLOAT NOT NULL,
	lpgc2014      FLOAT NOT NULL,
	PRIMARY KEY (state)
);



-- Create tables for raw data to be loaded into
CREATE TABLE ng_production (
	states VARCHAR(20)  NOT NULL,
	ng2010 FLOAT NOT NULL,
	ng2011 FLOAT NOT NULL,
	ng2012 FLOAT NOT NULL,
	ng2013 FLOAT NOT NULL,
	ng2014 FLOAT NOT NULL,
	FOREIGN KEY (states) REFERENCES energy_gdp(state)
	
);

-- Create tables for raw data to be loaded into
CREATE TABLE oil_production (
	states VARCHAR(20)  NOT NULL,
	oil2010 FLOAT NOT NULL,
	oil2011 FLOAT NOT NULL,
	oil2012 FLOAT NOT NULL,
	oil2013 FLOAT NOT NULL,
	oil2014 FLOAT NOT NULL,
	FOREIGN KEY (states) REFERENCES energy_gdp(state)
	
);