select
    "ï»¿organization.organizationIdentifier" as organization_identifier,
    orgType as org_type,
    "location.locationIdentifier" as location_identifier,
    name,
    division,
    sourceLink as source_link
from read_csv_auto('data/Organization_v2_clean.csv', header = true)
