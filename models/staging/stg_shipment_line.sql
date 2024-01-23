select
    "shipment.shipmentIdentifier" as shipment_identifier,
    shipmentLineNumber as shipment_line_number,
    "shipment.shipmentType" as shipment_type,
    "order.orderIdentifier" as order_identifier,
    "orderLine.orderLineNumber" as order_line_number,
    dateCreated as date_created,
    quantity,
    quantityUnits as quantity_units,
    value,
    valueCurrency as value_currency
from read_csv_auto('data/ShipmentLine_v3_clean.csv', header = true)
