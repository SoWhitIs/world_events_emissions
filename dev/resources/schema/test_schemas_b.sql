--Whitney D. Gardner || AprilMay 2021
Project: World Events/Carbon Emissions

CREATE TABLE region(
    record_no INT PRIMARY KEY,
    iso_code VARCHAR,
    geo_reg VARCHAR,
    population INT,
    year INT,
    co2 FLOAT,
    co2_per_capita FLOAT,
    co2_per_gdp FLOAT,
    co2_growth_prct FLOAT, 
    consumption_co2 FLOAT, 
    consumption_co2_per_capita FLOAT, 
    share_global_co2 FLOAT
);

__
 --Grab Schema
SELECT column_name,data_type 
FROM information_schema.columns 
WHERE
table_name = 'region' 
AND table_catalog = 'carbon_emission_world_events';

__
 --Alter Table Columns
ALTER TABLE region 
ALTER COLUMN co2 TYPE float;

__
-- Add Primary Key
ALTER TABLE region ADD PRIMARY KEY (record_no);