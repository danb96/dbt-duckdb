select
    ï»¿locationIdentifier as location_identifier,
    locationType as location_type,
    locationName as location_name,
    address1,
    address2,
    city,
    postalCode as postal_code,
    stateProvince as state_province,
    country,
    coordinates,
    includeInCorrelation as include_in_correlation,
    geo,
    locationSubType as location_sub_type,
    sourceLink as source_link
from read_csv_auto('data/Location_v2_clean.csv', header = true)
