select
    "ï»¿order.orderIdentifier" as order_identifier,
    "orderLine.orderLineNumber" as order_line_number,
    "productItem.partNumber" as product_item_part_number,
    quantityRequired as quantity_required,
    quantityRequiredUnits as quantity_required_units,
    quantityAllocated as quantity_allocated,
    quantityAllocatedUnits as quantity_allocated_units,
    allocationComment as allocation_comment,
    alternateItems as alternate_items,
    sourceLink as source_link
from read_csv_auto('data/OrderAllocation_v1_clean.csv', header = true)
