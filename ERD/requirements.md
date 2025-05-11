# ER Diagram - Airbnb Database

## 1. Entities and Attributes

Based on the project specification, the following entities have been identified:

### 🧍 User
- `user_id`: UUID, Primary Key
- `first_name`: VARCHAR
- `last_name`: VARCHAR
- `email`: VARCHAR, Unique
- `password_hash`: VARCHAR
- `phone_number`: VARCHAR
- `role`: ENUM(`guest`, `host`, `admin`)
- `created_at`: TIMESTAMP

### 🏠 Property
- `property_id`: UUID, Primary Key
- `host_id`: UUID, Foreign Key → `User(user_id)`
- `name`: VARCHAR
- `description`: TEXT
- `location`: VARCHAR
- `price_per_night`: DECIMAL
- `created_at`, `updated_at`: TIMESTAMP

### 📅 Booking
- `booking_id`: UUID, Primary Key
- `property_id`: Foreign Key → `Property(property_id)`
- `user_id`: Foreign Key → `User(user_id)`
- `start_date`, `end_date`: DATE
- `total_price`: DECIMAL
- `status`: ENUM(`pending`, `confirmed`, `canceled`)
- `created_at`: TIMESTAMP

### 💳 Payment
- `payment_id`: UUID, Primary Key
- `booking_id`: Foreign Key → `Booking(booking_id)`
- `amount`: DECIMAL
- `payment_date`: TIMESTAMP
- `payment_method`: ENUM(`credit_card`, `paypal`, `stripe`)

### 📝 Review
- `review_id`: UUID, Primary Key
- `property_id`: Foreign Key → `Property(property_id)`
- `user_id`: Foreign Key → `User(user_id)`
- `rating`: INTEGER (1 to 5)
- `comment`: TEXT
- `created_at`: TIMESTAMP

### 💬 Message
- `message_id`: UUID, Primary Key
- `sender_id`: Foreign Key → `User(user_id)`
- `recipient_id`: Foreign Key → `User(user_id)`
- `message_body`: TEXT
- `sent_at`: TIMESTAMP

---

## 2. Relationships Between Entities

- **User ↔ Property**: One host user can create multiple properties (`1:N`)
- **User ↔ Booking**: One guest can make multiple bookings (`1:N`)
- **User ↔ Review**: One guest can write multiple reviews (`1:N`)
- **User ↔ Message**: Users can send and receive messages (`M:N`)
- **Property ↔ Booking**: A property can be booked many times (`1:N`)
- **Property ↔ Review**: A property can have many reviews (`1:N`)
- **Booking ↔ Payment**: Each booking can have one payment (`1:1`)

---

## 3. Diagram Tool

The ER diagram was created using **vertabelo.com** to visualize all entities and their relationships clearly.
---

