select
    orderIdentifier as order_identifier,
    orderLineNumber as order_line_number,
    orderType as order_type,
    "product.partNumber" as product_part_number,
    "shipFromInstructionLocation.locationIdentifier" as ship_from_instruction_location_identifier,
    "shipToLocation.locationIdentifier" as ship_to_location_identifier,
    status,
    createdDate as created_date,
    requestedShipDate as requested_ship_date,
    requestedDeliveryDate as requested_delivery_date,
    quantity,
    quantityUnits as quantity_units,
    productValue as product_value,
    value,
    valueCurrency as value_currency,
    shipmentCount as shipment_count
from read_csv_auto('data/OrderLine_v4_clean.csv', header = true)
