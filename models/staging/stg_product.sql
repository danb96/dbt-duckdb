select
    partNumber as part_number,
    productType as product_type,
    "category.code" as category_code,
    "brand.code" as brand_code,
    "family.code" as family_code,
    "line.code" as line_code,
    "segment.code" as segment_code,
    status,
    value,
    valueCurrency as value_currency,
    defaultQuantityUnits as default_quantity_units,
    name,
    description,
    plannerCode as planner_code,
    sourceLink as source_link
from read_csv_auto('data/Product_v5_clean.csv', header = true)
