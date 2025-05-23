# Partitioning Performance Report

## What Was Done

Partitioned the `booking` table using PostgreSQL's RANGE partitioning on the `start_date` column. Created separate partitions for 2022, 2023, and 2024.

## Test Query

Queried bookings between June 1 and June 30, 2023 using:

```sql
SELECT * FROM booking
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
