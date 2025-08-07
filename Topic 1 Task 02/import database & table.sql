CREATE DATABASE analisis_konservasi_rantai_mangrove

CREATE TABLE regulatory_permits (
	permit_id varchar (20) primary key,
	conservation_id varchar (20),
	permit_type varchar (100),
	authority varchar (100),
	approval_date date,
	permit_status varchar (50)
)

SELECT * FROM regulatory_permits

CREATE TABLE land_tenure_records (
	tenure_id varchar (20) primary key,
	conservation_id varchar (20),
	land_type varchar (50),
	owner varchar (50),
	legal_document varchar (50),
	boundary_defined varchar (20)
)

SELECT * FROM land_tenure_records

CREATE TABLE biodiversity_monitoring (
	bio_id varchar (20) primary key,
	conservation_id varchar (20),
	species_count int,
	tree_density int,
	water_quality varchar (50),
	assessment_date date
)

SELECT * FROM biodiversity_monitoring

-- import data
COPY regulatory_permits FROM 'D:\Digital Bootcamp\task 2 - tutorial mangrove\010Regulatory_permits.csv' DELIMITER ',' CSV HEADER;
COPY land_tenure_records FROM 'D:\Digital Bootcamp\task 2 - tutorial mangrove\011Land_Tenure_Records.csv' DELIMITER ',' CSV HEADER;
COPY biodiversity_monitoring FROM 'D:\Digital Bootcamp\task 2 - tutorial mangrove\012Biodiversity_Monitoring.csv' DELIMITER ',' CSV HEADER;