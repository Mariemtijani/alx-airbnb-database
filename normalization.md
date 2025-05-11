## ✅ Normalization and 3NF Justification

the Airbnb database respects Third Normal Form (3NF).

### Here's how it satisfies the rules of 3NF:

1. **First Normal Form (1NF):**
   - All columns contain atomic (indivisible) values.
   - Each table has a defined primary key and no repeating groups.

2. **Second Normal Form (2NF):**
   - All non-key attributes depend on the full primary key.
   - Composite keys are not used in this schema, so 2NF is satisfied by design.

3. **Third Normal Form (3NF):**
   - There are **no transitive dependencies** between non-key columns.
   - For example:
     - In the `User` table, fields like `role`, `email`, and `phone_number` depend only on `user_id`.
     - In the `Booking` table, the `status` is stored as an `ENUM` and does not depend on any other non-key field.
   - All foreign key relationships (e.g., `host_id`, `property_id`, `user_id`) link entities correctly without redundancy.

