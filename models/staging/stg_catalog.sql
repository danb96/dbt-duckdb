select
    ï»¿levelType as level_type,
    code,
    catalogType as catalog_type,
    name,
    description,
    sourceLink as source_link
from read_csv_auto('data/Catalog_v2_clean.csv', header = true)
