select
    ï»¿locationGroupIdentifier as location_group_identifier,
    "location.locationIdentifier" as location_identifier,
    locationGroupType as location_group_type,
    locationGroupName as location_group_name,
    sourceLink as source_link
from read_csv_auto('data/LocationGroup_v1_clean.csv', header = true)
