

CREATE TABLE IF NOT EXISTS fact_order (
    order_id VARCHAR,
    order_date TIMESTAMP,
    customer_id VARCHAR,
    quantity INT,
    price_per_item FLOAT,
    total_price FLOAT,
    status VARCHAR
);

COPY fact_order
FROM 's3://quickbite-data-suraj/Trusted/transactions/'
IAM_ROLE 'arn:aws:iam::773448520804:role/service-role/AmazonRedshift-CommandsAccessRole-20250602T211026'
FORMAT AS PARQUET;
