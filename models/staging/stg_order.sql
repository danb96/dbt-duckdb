select * from read_csv(
    'data/Order_v3_clean.csv',
    ignore_errors = true,
    auto_detect = true
)

