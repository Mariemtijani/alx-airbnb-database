-- partitioning.sql

-- 1. Create the master table
CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status TEXT
) PARTITION BY RANGE (start_date);

-- 2. Create partitions
CREATE TABLE booking_2022 PARTITION OF booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE booking_2023 PARTITION OF booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_2024 PARTITION OF booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');


-- Query to test performance
EXPLAIN ANALYZE
SELECT *
FROM booking
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
