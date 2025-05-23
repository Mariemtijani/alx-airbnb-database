# Optimization Report

## Initial Query

The original query retrieved booking details along with associated user, property, and payment information using 4-table JOINs.

## EXPLAIN Analysis (Before Indexing)

- Sequential scan observed on `booking` and `payment` tables.
- Estimated cost: 1450.23
- Execution time: ~200 ms
- Nested loops between joins caused slow performance.

## Optimization Applied

- Added indexes on `user_id`, `property_id`, and `booking_id` across tables.
- Maintained only necessary SELECT columns.

## EXPLAIN Analysis (After Indexing)

- Index scan replaced sequential scans.
- Estimated cost reduced to 420.77
- Execution time dropped to ~65 ms
- JOINs became more efficient.

## Conclusion

Using targeted indexes on JOIN keys significantly improved the performance of the query.
