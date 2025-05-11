-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  (uuid_generate_v4(), 'Alice', 'Johnson', 'alice@example.com', 'hashedpass1', '1234567890', 'host'),
  (uuid_generate_v4(), 'Bob', 'Smith', 'bob@example.com', 'hashedpass2', '0987654321', 'guest');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES 
  (uuid_generate_v4(), (SELECT user_id FROM users WHERE email = 'alice@example.com'), 
   'Oceanview Apartment', 'Beautiful apartment near the beach', 'Miami', 150.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
  (uuid_generate_v4(), 
   (SELECT property_id FROM properties WHERE name = 'Oceanview Apartment'),
   (SELECT user_id FROM users WHERE email = 'bob@example.com'),
   '2024-08-01', '2024-08-05', 600.00, 'confirmed');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
  (uuid_generate_v4(), 
   (SELECT booking_id FROM bookings LIMIT 1), 
   600.00, 'credit_card');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
  (uuid_generate_v4(),
   (SELECT property_id FROM properties LIMIT 1),
   (SELECT user_id FROM users WHERE email = 'bob@example.com'),
   5, 'Amazing stay!');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
  (uuid_generate_v4(),
   (SELECT user_id FROM users WHERE email = 'bob@example.com'),
   (SELECT user_id FROM users WHERE email = 'alice@example.com'),
   'Hi! Is your apartment available for early check-in?');
