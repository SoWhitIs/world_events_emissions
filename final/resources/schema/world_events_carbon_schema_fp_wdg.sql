Whitney D. Gardner April/May 2021
Final Project: World Events & Carbon Emissions
Columbia University Data Analytics BootCamp

___


CREATE TABLE "decades_co_emissions" (
    "record_no" INT   NOT NULL,
    "iso_code" VARCHAR   NOT NULL,
    "geo_reg" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "population" INT   NOT NULL,
    "gdp" FLOAT   NOT NULL,
    "co2" FLOAT   NOT NULL,
    "co2_growth_prct" FLOAT   NOT NULL,
    "co2_growth_abs" FLOAT   NOT NULL,
    "consumption_co2" FLOAT   NOT NULL,
    "trade_co2" FLOAT   NOT NULL,
    "trade_co2_share" FLOAT   NOT NULL,
    "co2_per_capita" FLOAT   NOT NULL,
    "consumption_co2_per_capita" FLOAT   NOT NULL,
    "share_global_co2" FLOAT   NOT NULL,
    "cumulative_co2" FLOAT   NOT NULL,
    "co2_per_gdp" FLOAT   NOT NULL,
    "consumption_co2_per_gdp" FLOAT   NOT NULL,
    "cement_co2" FLOAT   NOT NULL,
    "coal_co2" FLOAT   NOT NULL,
    "flaring_co2" FLOAT   NOT NULL,
    "gas_co2" FLOAT   NOT NULL,
    "oil_co2" FLOAT   NOT NULL,
    "other_industry_co2" FLOAT   NOT NULL,
    "cement_co2_per_capita" FLOAT   NOT NULL,
    "coal_co2_per_capita" FLOAT   NOT NULL,
    "flaring_co2_per_capita" FLOAT   NOT NULL,
    "gas_co2_per_capita" FLOAT   NOT NULL,
    "oil_co2_per_capita" FLOAT   NOT NULL,
    CONSTRAINT "pk_decades_co_emissions" PRIMARY KEY (
        "record_no"
     )
);

CREATE TABLE "recession" (
    "record_no" INT   NOT NULL,
    "iso_code" VARCHAR   NOT NULL,
    "geo_reg" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "population" INT   NOT NULL,
    "gdp" FLOAT   NOT NULL,
    "co2" FLOAT   NOT NULL,
    "co2_growth_prct" FLOAT   NOT NULL,
    "co2_growth_abs" FLOAT   NOT NULL,
    "consumption_co2" FLOAT   NOT NULL,
    "trade_co2" FLOAT   NOT NULL,
    "trade_co2_share" FLOAT   NOT NULL,
    "co2_per_capita" FLOAT   NOT NULL,
    "consumption_co2_per_capita" FLOAT   NOT NULL,
    "share_global_co2" FLOAT   NOT NULL,
    "cumulative_co2" FLOAT   NOT NULL,
    "co2_per_gdp" FLOAT   NOT NULL,
    "consumption_co2_per_gdp" FLOAT   NOT NULL,
    "cement_co2" FLOAT   NOT NULL,
    "coal_co2" FLOAT   NOT NULL,
    "flaring_co2" FLOAT   NOT NULL,
    "gas_co2" FLOAT   NOT NULL,
    "oil_co2" FLOAT   NOT NULL,
    "other_industry_co2" FLOAT   NOT NULL,
    "cement_co2_per_capita" FLOAT   NOT NULL,
    "coal_co2_per_capita" FLOAT   NOT NULL,
    "flaring_co2_per_capita" FLOAT   NOT NULL,
    "gas_co2_per_capita" FLOAT   NOT NULL,
    "oil_co2_per_capita" FLOAT   NOT NULL,
    CONSTRAINT "pk_recession" PRIMARY KEY (
        "record_no"
     )
);

CREATE TABLE "region" (
    "record_no" INT   NOT NULL,
    "iso_code" VARCHAR   NOT NULL,
    "geo_reg" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "population" INT   NOT NULL,
    "gdp" FLOAT   NOT NULL,
    "co2" FLOAT   NOT NULL,
    "co2_growth_prct" FLOAT   NOT NULL,
    "co2_growth_abs" FLOAT   NOT NULL,
    "consumption_co2" FLOAT   NOT NULL,
    "trade_co2" FLOAT   NOT NULL,
    "trade_co2_share" FLOAT   NOT NULL,
    "co2_per_capita" FLOAT   NOT NULL,
    "consumption_co2_per_capita" FLOAT   NOT NULL,
    "share_global_co2" FLOAT   NOT NULL,
    "cumulative_co2" FLOAT   NOT NULL,
    "co2_per_gdp" FLOAT   NOT NULL,
    "consumption_co2_per_gdp" FLOAT   NOT NULL,
    "cement_co2" FLOAT   NOT NULL,
    "coal_co2" FLOAT   NOT NULL,
    "flaring_co2" FLOAT   NOT NULL,
    "gas_co2" FLOAT   NOT NULL,
    "oil_co2" FLOAT   NOT NULL,
    "other_industry_co2" FLOAT   NOT NULL,
    "cement_co2_per_capita" FLOAT   NOT NULL,
    "coal_co2_per_capita" FLOAT   NOT NULL,
    "flaring_co2_per_capita" FLOAT   NOT NULL,
    "gas_co2_per_capita" FLOAT   NOT NULL,
    "oil_co2_per_capita" FLOAT   NOT NULL,
    CONSTRAINT "pk_region" PRIMARY KEY (
        "record_no"
     )
);

ALTER TABLE "recession" ADD CONSTRAINT "fk_recession_record_no" FOREIGN KEY("record_no")
REFERENCES "decades_co_emissions" ("record_no");

ALTER TABLE "region" ADD CONSTRAINT "fk_region_record_no" FOREIGN KEY("record_no")
REFERENCES "recession" ("record_no");

___

Notes: 

* Numeric-based columns (FLOAT, INT) with missing values were replaced with "0"
* Text-based (VARCHAR) columns  missing information were replaced with "notfound"