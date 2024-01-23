select
    "ï»¿product.partNumber" as product_part_number,
    "location.locationIdentifier" as location_identifier,
    startDate as start_date,
    duration,
    planParentType as plan_parent_type,
    planType as plan_type,
    quantity,
    quantityUnits as quanity_units,
    planningCycle as planning_cycle,
    source,
    sourceLink as source_link
from read_csv_auto('data/DemandPlan_v1_clean.csv', header = true)
