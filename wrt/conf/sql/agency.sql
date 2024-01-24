WITH j (iata_id, agency, city, country, region, continent) AS (
  VALUES
    ('NYC', 'Metropolitan Transportation Authority (MTA)', 'New York', 'United States', 'United States East', 'North America'),
    ('PHL', 'Southeastern Pennsylvania Transportation Authority (SEPTA)', 'Philadelphia', 'United States', 'United States East', 'North America'),
    ('DCA', 'Washington Metropolitan Area Transit Authority (WMATA)', 'District of Columbia', 'United States', 'United States East', 'North America'),
    ('BOS', 'Massachusetts Bay Transportation Authority (MBTA)', 'Boston', 'United States', 'United States East', 'North America'),
    ('PIT', 'Pittsburgh Regional Transit (PRT)', 'Pittsburgh', 'United States', 'United States East', 'North America'),
    ('LAX', 'Los Angeles County Metropolitan Transportation Authority (Metro)', 'Los Angeles', 'United States', 'United States West', 'North America'),
    ('SFO', 'Metropolitan Transportation Commission (MTC)', 'San Francisco', 'United States', 'United States West', 'North America'),
    ('SAN', 'San Diego Metropolitan Transit System (MTS)', 'San Diego', 'United States', 'United States West', 'North America'),
    ('SEA', 'King County Metro (Metro)', 'Seattle', 'United States', 'United States West', 'North America'),
    ('SMF', 'Sacramento Regional Transit District (SacRT)', 'Sacramento', 'United States', 'United States West', 'North America'),
    ('PDX', 'Tri-County Metropolitan Transportation District of Oregon (TriMet)', 'Portland', 'United States', 'United States West', 'North America'),
    ('ATL', 'Metropolitan Atlanta Rapid Transit Authority (MARTA)', 'Atlanta', 'United States', 'United States South', 'North America'),
    ('MIA', 'Miami-Dade Transit (MDT)', 'Miami', 'United States', 'United States South', 'North America'),
    ('TPA', 'Hillsborough Area Regional Transit (HART)', 'Tampa', 'United States', 'United States South', 'North America'),
    ('SDF', 'Transit Authority of River City (TARC)', 'Louisville', 'United States', 'United States South', 'North America'),
    ('BNA', 'Nashville Metropolitan Transit Authority (Nashville MTA)', 'Nashville', 'United States', 'United States South', 'North America'),
    ('MSP', 'Metro Transit (Minnesota)', 'Minneapolis', 'United States', 'United States Central', 'North America'),
    ('STL', 'Metro Transit (St. Louis)', 'St. Louis', 'United States', 'United States Central', 'North America'),
    ('MSN', 'Metro Transit (Madison)', 'Madison', 'United States', 'United States Central', 'North America'),
    ('CMH', 'Central Ohio Transit Authority (COTA)', 'Columbus', 'United States', 'United States Central', 'North America'),
    ('DSM', 'Des Moines Area Regional Transit Authority (DART)', 'Des Moines', 'United States', 'United States Central', 'North America'),
    ('DEN', 'Regional Transportation District (RTD)', 'Denver', 'United States', 'United States Mountain', 'North America'),
    ('PHX', 'Valley Metro Regional Public Transportation Authority (Valley Metro)', 'Phoenix', 'United States', 'United States Mountain', 'North America'),
    ('SAT', 'VIA Metropolitan Transit Authority (VIA Metro)', 'San Antonio', 'United States', 'United States Mountain', 'North America'),
    ('AUS', 'Capital Metropolitan Transportation Authority (CapMetro)', 'Austin', 'United States', 'United States Mountain', 'North America'),
    ('BIL', 'Billings Metropolitan Transit (MET)', 'Billings', 'United States', 'United States Mountain', 'North America'),
    ('YUL', 'Société de transport de Montréal (STM)', 'Montreal', 'Canada', 'Canada East', 'North America'),
    ('YYZ', 'York Region Transit (YRT)', 'York', 'Canada', 'Canada East', 'North America'),
    ('YHM', 'Hamilton Street Railway (HSR)', 'Hamilton', 'Canada', 'Canada East', 'North America'),
    ('YHZ', 'Halifax Transit', 'Halifax', 'Canada', 'Canada East', 'North America'),
    ('YQT', 'Thunder Bay Transit', 'Thunder Bay', 'Canada', 'Canada East', 'North America'),
    ('YVR', 'TransLink (British Columbia)', 'Vancouver', 'Canada', 'Canada West', 'North America'),
    ('YYC', 'Calgary Transit', 'Calgary', 'Canada', 'Canada West', 'North America'),
    ('YEG', 'Edmonton Transit Service (ETS)', 'Edmonton', 'Canada', 'Canada West', 'North America'),
    ('YXE', 'Saskatoon Transit', 'Saskatoon', 'Canada', 'Canada West', 'North America'),
    -- ('YYJ', 'Victoria Regional Transit System', 'Victoria', 'Canada', 'Canada West', 'North America'),
    ('AMS', 'Openbaar Vervoer (OV)', 'Amsterdam', 'Netherlands', 'Europe West', 'Europe'),
    ('ARN', 'Storstockholms Lokaltrafik (SL)', 'Stockholm', 'Sweden', 'Europe West', 'Europe'),
    ('DUB', 'National Transport Authority', 'Dublin', 'Ireland', 'Europe West', 'Europe'),
    ('HEL', 'Helsingin seudun liikenteen (HSL)', 'Helsinki', 'Finland', 'Europe West', 'Europe'),
    ('FCO', 'Azienda Tramvie e Autobus del Comune di Roma (ATAC)', 'Rome', 'Italy', 'Europe West', 'Europe'),
    ('WAW', 'Zarząd Transportu Miejskiego w Warszawie (ZTM)', 'Warsaw', 'Poland', 'Europe Central', 'Europe'),
    ('KRK', 'Zarząd Transportu Publicznego w Krakowie (ZTP)', 'Kraków', 'Poland', 'Europe Central', 'Europe'),
    ('GDN', 'Zarządu Transportu Miejskiego w Gdańsku (ZTM)', 'Gdańsk', 'Poland', 'Europe Central', 'Europe'),
    ('PRG', 'Pražská Integrovaná Doprava (PID)', 'Prague', 'Czech Republic', 'Europe Central', 'Europe'),
    ('SYD', 'Transport for New South Wales (Transport for NSW)', 'Sydney', 'Australia', 'Oceania', 'Oceania'),
    ('BNE', 'Translink (Queensland)', 'Brisbane', 'Australia', 'Oceania', 'Oceania'),
    ('ADL', 'Adelaide Metro', 'Adelaide', 'Australia', 'Oceania', 'Oceania'),
    ('AKL', 'Auckland Transport (AT)', 'Auckland', 'New Zealand', 'Oceania', 'Oceania'),
    ('CHC', 'Environment Canterbury (Metro)', 'Christchurch', 'New Zealand', 'Oceania', 'Oceania'),
    ('DEL', 'Delhi Transport Corporation (DTC)', 'Delhi', 'India', 'Asia', 'Asia')
)
INSERT INTO agency (iata_id, agency, city, country, region, continent)
SELECT i.iata_id, i.agency, i.city, i.country, i.region, i.continent
FROM j i
LEFT JOIN agency k ON k.iata_id = i.iata_id
WHERE k.iata_id IS NULL;