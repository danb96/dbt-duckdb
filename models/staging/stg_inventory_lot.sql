select
    "product.partNumber" as product_part_number,
    "location.locationIdentifier" as location_identifier,
    inventoryType as inventory_type,
    quantity,
    quantityUnits as quantity_units,
    expirationDate as expiration_date,
    inventoryParentType as inventory_parent_type,
    class,
    segment,
    lotCode as lot_code,
    status,
    value,
    valueCurrency as value_currency,
    sourceLink as source_link,
    storageDate as storage_date
from read_csv_auto('data/InventoryLot_v3_clean.csv', header = true)
