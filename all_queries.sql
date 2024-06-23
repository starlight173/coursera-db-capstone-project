-- Get Max Quantity From Orders Procedure--
DELIMITER &&  
CREATE PROCEDURE GetMaxQuantity()  
BEGIN  
	SELECT MAX(quantity) FROM orders;
END &&  
DELIMITER ;  

-- Manage Booking Procedure--
-- Unframe and call this to get the 1305 exception
-- CALL ManageBooking(11,1); 

-- Add Booking Procedure---
DELIMITER &&  
CREATE PROCEDURE AddBooking(
	IN bookingID INT,
    IN bookingDate Date,
    IN tableNumber INT,
    IN customerID INT
)  
BEGIN  
	INSERT INTO bookings (booking_id, booking_date, table_number, customer_id) VALUES
	(bookingID, bookingDate, tableNumber, customerID);
END &&  
DELIMITER ;

-- Update Booking Stored Procedure---
DELIMITER &&

CREATE PROCEDURE UpdateBooking(
    IN tableNumber INT,
    IN bookingDate Date
)
BEGIN
    UPDATE bookings
    SET booking_date = bookingDate
    WHERE booking_id = (SELECT * FROM (SELECT booking_id FROM bookings WHERE table_number = tableNumber ORDER BY booking_date DESC LIMIT 1)tmpTable);
END &&

DELIMITER ;
-- CALL UpdateBooking(99, '2022-1-10');

-- Update Booking Stored Procedure---
DELIMITER &&

CREATE PROCEDURE CancelBooking(
    IN tableNumber INT
)
BEGIN
    UPDATE bookings
    SET is_cancelled = true
    WHERE booking_id = (SELECT * FROM (SELECT booking_id FROM bookings WHERE table_number = tableNumber ORDER BY booking_date DESC LIMIT 1)tmpTable);
END &&

DELIMITER ;