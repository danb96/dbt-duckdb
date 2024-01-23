select
    orderIdentifier as order_identifier,
    orderType as order_type,
    "vendor.organizationIdentifier" as vendor_organization_identifier,
    "buyer.organizationIdentifier" as buyer_organization_identifier,
    "shipFromInstructionLocation.locationIdentifier" as ship_from_instruction_location_identifier,
    "shipToLocation.locationIdentifier" as ship_to_location_identifier,
    orderStatus as order_status,
    createdDate as created_date,
    requestedShipDate as requested_ship_date,
    requestedDeliveryDate as requested_delivery_date,
    plannedShipDate as planned_ship_date,
    plannedDeliveryDate as planned_delivery_date,
    quantity,
    quantityUnits as quantity_units,
    totalValue as total_value,
    orderValueCurrency as order_value_currency,
    lineCount as line_count,
    totalShippedQuantity as total_shipped_quantity,
    exclude,
    sourceLink as source_link
from read_csv(
    'data/Order_v3_clean.csv',
    ignore_errors = true,
    auto_detect = true
)

