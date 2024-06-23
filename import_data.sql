-- Sample data-- 
INSERT INTO menu_items (menu_item_id, course_name, starter_name, dessert_name) VALUES
(1, 'Pasta', 'Bruschetta', 'Tiramisu'),
(2, 'Pizza', 'Garlic Bread', 'Panna Cotta'),
(3, 'Burger', 'Chicken Wings', 'Cheesecake'),
(4, 'Salad', 'Caprese', 'Gelato'),
(5, 'Sushi', 'Miso Soup', 'Mochi'),
(6, 'Steak', 'Caesar Salad', 'Brownie'),
(7, 'Tacos', 'Nachos', 'Churros'),
(8, 'Curry', 'Samosa', 'Gulab Jamun'),
(9, 'Ramen', 'Edamame', 'Matcha Ice Cream'),
(10, 'BBQ Ribs', 'Coleslaw', 'Apple Pie');

INSERT INTO menus (menu_id, menu_name, cuisine, menu_item_id) VALUES
(1, 'Italian Delight', 'Italian', 1),
(2, 'Pizza Feast', 'Italian', 2),
(3, 'American Classic', 'American', 3),
(4, 'Healthy Choice', 'American', 4),
(5, 'Japanese Special', 'Japanese', 5),
(6, 'Steakhouse', 'American', 6),
(7, 'Mexican Fiesta', 'Mexican', 7),
(8, 'Indian Spice', 'Indian', 8),
(9, 'Asian Bowl', 'Asian', 9),
(10, 'BBQ Heaven', 'American', 10);

INSERT INTO customers (customer_id, full_name, contact_number, email) VALUES
(1, 'John Doe', '1234567890', 'john.doe@example.com'),
(2, 'Jane Smith', '2345678901', 'jane.smith@example.com'),
(3, 'Michael Johnson', '3456789012', 'michael.johnson@example.com'),
(4, 'Emily Davis', '4567890123', 'emily.davis@example.com'),
(5, 'David Wilson', '5678901234', 'david.wilson@example.com'),
(6, 'Sophia Brown', '6789012345', 'sophia.brown@example.com'),
(7, 'James Jones', '7890123456', 'james.jones@example.com'),
(8, 'Olivia Garcia', '8901234567', 'olivia.garcia@example.com'),
(9, 'Daniel Martinez', '9012345678', 'daniel.martinez@example.com'),
(10, 'Mia Rodriguez', '1234509876', 'mia.rodriguez@example.com'),
(99, 'Jane Doe', '1234567890', 'jane.doe@example.com');

INSERT INTO bookings (booking_id, booking_date, table_number, customer_id) VALUES
(1, '2024-06-01', 1, 1),
(2, '2024-06-02', 2, 2),
(3, '2024-06-03', 3, 3),
(4, '2024-06-04', 4, 4),
(5, '2024-06-05', 5, 5),
(6, '2024-06-06', 6, 6),
(7, '2024-06-07', 7, 7),
(8, '2024-06-08', 8, 8),
(9, '2024-06-09', 9, 9),
(10, '2024-06-10', 10, 10);

INSERT INTO orders (order_id, menu_id, customer_id, quantity, total_cost) VALUES
(1, 1, 1, 1, 25.50),
(2, 2, 2, 2, 30.00),
(3, 3, 3, 3, 20.75),
(4, 4, 4, 4, 15.00),
(5, 5, 5, 5, 35.50),
(6, 6, 6, 1, 40.00),
(7, 7, 7, 2, 22.25),
(8, 8, 8, 3, 28.00),
(9, 9, 9, 4, 32.75),
(10, 10, 10, 5 , 45.00);