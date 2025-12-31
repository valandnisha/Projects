create database RAILWAY_MANAGEMENT_PROJECT;
USE RAILWAY_MANAGEMENT_PROJECT;

 
-- 1️ Train Table
CREATE TABLE Train (
    TrainID INT PRIMARY KEY AUTO_INCREMENT,
    TrainName VARCHAR(100) NOT NULL,
    TrainType VARCHAR(50),
    SourceStation VARCHAR(100),
    DestinationStation VARCHAR(100),
    DaysOfOperation VARCHAR(50)
);


SELECT * from Train;

-- 2 Route Table
CREATE TABLE Route (
    RouteID INT PRIMARY KEY AUTO_INCREMENT,
    TrainID INT,
    StationName VARCHAR(100),
    ArrivalTime TIME,
    DepartureTime TIME,
    DistanceFromSource INT,
    StopNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Train(TrainID)
);

-- 3 Booking Table
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    TrainID INT,
    PassengerName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    FromStation VARCHAR(100),
    ToStation VARCHAR(100),
    DateOfJourney DATE,
    SeatClass VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (TrainID) REFERENCES Train(TrainID)
);

-- 4 PAYMENT TABLE
    CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT,
    AmountPaid DECIMAL(10,2),
    PaymentMode VARCHAR(50),
    PaymentStatus VARCHAR(20),
    PaymentDate DATE,
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

INSERT INTO Train (TrainName ,TrainType ,SourceStation,DestinationStation ,DaysOfOperation) VALUES     
 ( 'Vande Bharat Express', 'Semi-High-Speed', 'New Delhi', 'Varanasi', 'Daily'),
 ( 'Gatimaan Express', 'Semi-High-Speed', 'Hazrat Nizamuddin', 'Jhansi', 'Daily'),
 ('Rajdhani Express', 'Premium', 'Mumbai Central', 'New Delhi', 'Daily'),
 ('Shatabdi Express', 'Superfast', 'Chennai Central', 'Mysuru', 'Daily'),
 ( 'Duronto Express', 'Superfast', 'Sealdah', 'Puri', 'Daily'),
 ( 'Tejas Express', 'Luxury', 'Chhatrapati Shivaji Maharaj Terminus', 'Goa', 'Mon, Wed, Fri'),
 ('Humsafar Express', 'AC Express', 'Bangalore', 'Varanasi', 'Weekly'),
 ( 'Garib Rath', 'AC Express', 'Kolkata', 'Delhi', 'Daily'),
 ( 'Jan Shatabdi', 'Superfast', 'Pune', 'Mumbai CST', 'Daily'),
 ( 'Sampark Kranti', 'Superfast', 'Bangalore', 'Hazrat Nizamuddin', 'Daily'),
 ( 'Antyodaya Express', 'General', 'Darbhanga', 'Jalandhar City', 'Daily'),
 ( 'Suvidha Express', 'Premium Tatkal', 'Patna', 'Bangalore', 'Bi-Weekly'),
 ( 'Double Decker', 'AC Chair Car', 'Jaipur', 'Delhi Sarai Rohilla', 'Daily'),
 ( 'Deccan Queen', 'Superfast', 'Pune', 'Mumbai CST', 'Daily'),
 ( 'Ashram Express', 'Superfast', 'Ahmedabad', 'New Delhi', 'Daily'),
 ( 'Yuva Express', 'AC Express', 'Delhi Sarai Rohilla', 'Howrah', 'Tue, Fri, Sun'),
 ( 'Champaran Satyagrah', 'Express', 'Bapudham Motihari', 'Anand Vihar Terminal', 'Mon, Thu, Sat'),
 ( 'Kavach Kesari Express', 'Express', 'Nagpur', 'Amritsar', 'Mon, Wed, Fri'),
 ('Mithilanchal Express', 'Express', 'Sitamarhi', 'Howrah', 'Daily'),
 ( 'Amrit Bharat Express', 'Economy', 'Darbhanga', 'Anand Vihar Terminal', 'Daily');
 
 
 INSERT INTO Route (TrainID, StationName, ArrivalTime, DepartureTime, DistanceFromSource, StopNumber) VALUES
(1, 'New Delhi', '06:00:00', '06:10:00', 0, 1),
(1, 'Ghaziabad', '06:40:00', '06:42:00', 35, 2),
(1, 'Aligarh Junction', '07:30:00', '07:32:00', 120, 3),
(1, 'Kanpur Central', '09:00:00', '09:05:00', 440, 4),
(1, 'Prayagraj Junction', '10:45:00', '10:50:00', 635, 5),
(1, 'Varanasi Junction', '12:30:00', '12:30:00', 760, 6),
(2, 'Hazrat Nizamuddin', '08:00:00', '08:10:00', 0, 1),
(2, 'Agra Cantt', '09:35:00', '09:40:00', 188, 2),
(2, 'Gwalior', '10:50:00', '10:55:00', 305, 3),
(2, 'Jhansi Junction', '12:10:00', '12:15:00', 403, 4),
(2, 'Bhopal Junction', '14:30:00', '14:35:00', 700, 5),
(2, 'Jhansi Junction', '16:00:00', '16:00:00', 850, 6),
(3, 'Mumbai Central', '16:00:00', '16:10:00', 0, 1),
(3, 'Surat', '18:00:00', '18:05:00', 263, 2),
(3, 'Vadodara Junction', '19:30:00', '19:35:00', 425, 3),
(3, 'Kota Junction', '22:00:00', '22:05:00', 987, 4),
(3, 'Agra Cantt', '01:30:00', '01:35:00', 1200, 5),
(3, 'New Delhi', '04:00:00', '04:00:00', 1385, 6),
(4, 'Chennai Central', '06:00:00', '06:10:00', 0, 1),
(4, 'Katpadi', '07:30:00', '07:35:00', 140, 2),
(4, 'Bangalore City', '10:00:00', '10:05:00', 335, 3),
(4, 'Mysuru', '12:00:00', '12:00:00', 470, 4),
(4, 'Salem', '12:50:00', '12:55:00', 540, 5),
(4, 'Tiruchirappalli', '13:40:00', '13:45:00', 610, 6),
(5, 'Sealdah', '08:00:00', '08:10:00', 0, 1),
(5, 'Dhanbad Junction', '10:45:00', '10:50:00', 259, 2),
(5, 'Gaya Junction', '12:45:00', '12:50:00', 393, 3),
(5, 'Pt. Deen Dayal Upadhyaya Jn', '14:50:00', '14:55:00', 538, 4),
(5, 'Prayagraj Junction', '16:40:00', '16:45:00', 650, 5),
(5, 'Puri', '19:30:00', '19:30:00', 870, 6),
(6, 'CSMT Mumbai', '05:00:00', '05:10:00', 0, 1),
(6, 'Thane', '05:50:00', '05:55:00', 34, 2),
(6, 'Panvel', '06:30:00', '06:35:00', 60, 3),
(6, 'Ratnagiri', '09:30:00', '09:35:00', 336, 4),
(6, 'Madgaon', '12:30:00', '12:35:00', 581, 5),
(6, 'Karmali', '13:00:00', '13:00:00', 615, 6),
(7, 'Ahmedabad Junction', '06:30:00', '06:40:00', 0, 1),
(7, 'Abu Road', '08:50:00', '08:55:00', 188, 2),
(7, 'Jodhpur Junction', '11:45:00', '11:50:00', 456, 3),
(7, 'Jaipur Junction', '14:30:00', '14:35:00', 661, 4),
(7, 'Agra Cantt', '18:20:00', '18:25:00', 965, 5),
(7, 'Lucknow NR', '22:45:00', '22:45:00', 1250, 6),
(8, 'Kolkata', '16:00:00', '16:10:00', 0, 1),
(8, 'Bhusaval', '18:00:00', '18:05:00', 420, 2),
(8, 'Jabalpur', '21:30:00', '21:35:00', 750, 3),
(8, 'Varanasi Junction', '00:30:00', '00:35:00', 1120, 4),
(8, 'Allahabad', '02:00:00', '02:05:00', 1200, 5),
(8, 'Delhi', '08:00:00', '08:00:00', 1400, 6),
(9, 'Pune Junction', '06:00:00', '06:10:00', 0, 1),
(9, 'Lonavala', '07:05:00', '07:10:00', 2, 2),
(9, 'Kalyan Junction', '08:05:00', '08:10:00', 119, 3),
(9, 'Dadar Central', '08:45:00', '08:50:00', 152, 4),
(9, 'Mumbai CST', '09:10:00', '09:15:00', 159, 5),
(9, 'Thane', '09:45:00', '09:50:00', 180, 6),
(10, 'Bangalore City Junction', '06:00:00', '06:10:00', 0, 1),
(10, 'Dharmavaram Junction', '08:30:00', '08:35:00', 181, 2),
(10, 'Kurnool City', '10:30:00', '10:35:00', 330, 3),
(10, 'Kacheguda', '13:00:00', '13:05:00', 500, 4),
(10, 'Nagpur Junction', '19:45:00', '19:50:00', 960, 5),
(10, 'Hazrat Nizamuddin', '07:30:00', '07:30:00', 1600, 6),
(11, 'Darbhanga', '06:00:00', '06:10:00', 0, 1),
(11, 'Samastipur', '06:50:00', '06:55:00', 38, 2),
(11, 'Muzaffarpur', '07:40:00', '07:45:00', 66, 3),
(11, 'Gorakhpur', '10:00:00', '10:05:00', 206, 4),
(11, 'Lucknow', '13:00:00', '13:05:00', 389, 5),
(11, 'Jalandhar City', '20:00:00', '20:10:00', 1042, 6),
(12, 'Patna Junction', '05:00:00', '05:10:00', 0, 1),
(12, 'Ara', '06:00:00', '06:05:00', 50, 2),
(12, 'Buxar', '06:50:00', '06:55:00', 100, 3),
(12, 'Varanasi', '08:30:00', '08:35:00', 220, 4),
(12, 'Prayagraj', '09:50:00', '09:55:00', 300, 5),
(12, 'Bangalore City', '21:00:00', '21:05:00', 2000, 6),
(13, 'Jaipur Junction', '06:00:00', '06:05:00', 0, 1),
(13, 'Gandhi Nagar Jaipur', '06:15:00', '06:20:00', 5, 2),
(13, 'Dausa', '06:55:00', '07:00:00', 61, 3),
(13, 'Alwar', '07:55:00', '08:00:00', 150, 4),
(13, 'Rewari', '09:05:00', '09:10:00', 230, 5),
(13, 'Delhi Sarai Rohilla', '11:00:00', '11:05:00', 305, 6),
(14, 'Pune', '06:15:00', '06:20:00', 0, 1),
(14, 'Lonavala', '07:05:00', '07:10:00', 2, 2),
(14, 'Kalyan', '08:05:00', '08:10:00', 119, 3),
(14, 'Dadar', '08:45:00', '08:50:00', 152, 4),
(14, 'Mumbai CST', '09:15:00', '09:20:00', 159, 5),
(14, 'Thane', '09:45:00', '09:50:00', 180, 6),
(15, 'Ahmedabad', '18:30:00', '18:35:00', 0, 1),
(15, 'Abu Road', '21:15:00', '21:20:00', 180, 2),
(15, 'Jaipur', '02:55:00', '03:00:00', 490, 3),
(15, 'Agra Cantt', '06:00:00', '06:05:00', 800, 4),
(15, 'New Delhi', '09:30:00', '09:35:00', 935, 5),
(15, 'Delhi Sarai Rohilla', '10:30:00', '10:35:00', 1000, 6),
(16, 'Delhi Sarai Rohilla', '17:10:00', '17:15:00', 0, 1),
(16, 'Kanpur Central', '22:30:00', '22:35:00', 440, 2),
(16, 'Dhanbad', '04:50:00', '04:55:00', 960, 3),
(16, 'Howrah', '07:20:00', '07:25:00', 1080, 4),
(16, 'Kolkata', '08:00:00', '08:05:00', 1100, 5),
(16, 'Bhubaneswar', '11:00:00', '11:05:00', 1400, 6),
(17, 'Bapudham Motihari', '06:00:00', '06:05:00', 0, 1),
(17, 'Muzaffarpur', '08:00:00', '08:05:00', 120, 2),
(17, 'Patna', '09:30:00', '09:35:00', 200, 3),
(17, 'Pt. Deen Dayal Upadhyaya Jn', '13:30:00', '13:35:00', 480, 4),
(17, 'Varanasi', '16:30:00', '16:35:00', 540, 5),
(17, 'Anand Vihar Terminal', '20:30:00', '20:35:00', 1000, 6),
(18, 'Nagpur', '07:00:00', '07:05:00', 0, 1),
(18, 'Betul', '09:00:00', '09:05:00', 180, 2),
(18, 'Itarsi', '11:00:00', '11:05:00', 300, 3),
(18, 'Bhopal', '13:00:00', '13:05:00', 450, 4),
(18, 'Jhansi', '17:00:00', '17:05:00', 720, 5),
(18, 'Amritsar', '22:00:00', '22:05:00', 1500, 6),
(19, 'Sitamarhi', '06:00:00', '06:05:00', 0, 1),
(19, 'Darbhanga', '07:00:00', '07:05:00', 45, 2),
(19, 'Samastipur', '08:00:00', '08:05:00', 90, 3),
(19, 'Mokama', '09:10:00', '09:15:00', 180, 4),
(19, 'Patna', '10:30:00', '10:35:00', 250, 5),
(19, 'Howrah', '14:00:00', '14:05:00', 420, 6),
(20, 'Darbhanga', '05:30:00', '05:35:00', 0, 1),
(20, 'Samastipur', '06:15:00', '06:20:00', 38, 2),
(20, 'Muzaffarpur', '07:10:00', '07:15:00', 75, 3),
(20, 'Patna', '09:00:00', '09:05:00', 140, 4),
(20, 'Kanpur Central', '13:00:00', '13:05:00', 700, 5),
(20, 'Anand Vihar Terminal', '16:30:00', '16:35:00', 920, 6);

select * from Route;


INSERT INTO Booking (BookingID, TrainID, PassengerName, Age, Gender, FromStation, ToStation, DateOfJourney, SeatClass, Status) VALUES
(1, 1, 'Rahul Sharma', 28, 'Male', 'New Delhi', 'Varanasi', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(2, 1, 'Anjali Patel', 32, 'Female', 'Ghaziabad', 'Kanpur Central', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(3, 1, 'Rohit Verma', 40, 'Male', 'Aligarh Junction', 'Varanasi Junction', '2025-12-25', 'Executive Class', 'Confirmed'),
(4, 1, 'Priya Singh', 25, 'Female', 'Kanpur Central', 'Varanasi Junction', '2025-12-26', 'AC Chair Car', 'Cancelled'),
(5, 1, 'Amit Mehta', 35, 'Male', 'New Delhi', 'Kanpur Central', '2025-12-26', 'Executive Class', 'Confirmed'),
(6, 1, 'Sonia Kapoor', 30, 'Female', 'Ghaziabad', 'Prayagraj Junction', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(7, 1, 'Vikram Das', 42, 'Male', 'Tundla Junction', 'Varanasi Junction', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(8, 1, 'Neha Jain', 27, 'Female', 'Kanpur Central', 'Varanasi Junction', '2025-12-27', 'Executive Class', 'Confirmed'),
(9, 1, 'Ramesh Patel', 50, 'Male', 'New Delhi', 'Varanasi', '2025-12-27', 'AC Chair Car', 'Cancelled'),
(10, 1, 'Shreya Gupta', 33, 'Female', 'Aligarh Junction', 'Kanpur Central', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(11, 2, 'Neha Jain', 29, 'Female', 'Hazrat Nizamuddin', 'Jhansi Junction', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(12, 2, 'Suresh Kumar', 45, 'Male', 'Agra Cantt', 'Bhopal Junction', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(13, 2, 'Pooja Reddy', 22, 'Female', 'Gwalior', 'Jhansi Junction', '2025-12-25', 'AC Chair Car', 'Cancelled'),
(14, 2, 'Vikram Singh', 38, 'Male', 'Hazrat Nizamuddin', 'Jhansi Junction', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(15, 2, 'Anita Das', 30, 'Female', 'Agra Cantt', 'Bhopal Junction', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(16, 2, 'Rohit Sharma', 34, 'Male', 'Gwalior', 'Jhansi Junction', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(17, 2, 'Priya Kapoor', 28, 'Female', 'Hazrat Nizamuddin', 'Bhopal Junction', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(18, 2, 'Amit Verma', 36, 'Male', 'Agra Cantt', 'Jhansi Junction', '2025-12-27', 'AC Chair Car', 'Cancelled'),
(19, 2, 'Sonia Sharma', 31, 'Female', 'Gwalior', 'Bhopal Junction', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(20, 2, 'Vivek Patel', 40, 'Male', 'Hazrat Nizamuddin', 'Jhansi Junction', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(21, 3, 'Sanjay Kapoor', 42, 'Male', 'Mumbai Central', 'New Delhi', '2025-12-25', 'AC First Class', 'Confirmed'),
(22, 3, 'Neha Sharma', 27, 'Female', 'Vadodara Junction', 'Kota Junction', '2025-12-25', 'AC 2-Tier', 'Confirmed'),
(23, 3, 'Ramesh Patel', 50, 'Male', 'Surat', 'New Delhi', '2025-12-26', 'AC 2-Tier', 'Cancelled'),
(24, 3, 'Shreya Gupta', 33, 'Female', 'Mumbai Central', 'Kota Junction', '2025-12-26', 'AC First Class', 'Confirmed'),
(25, 3, 'Aakash Verma', 28, 'Male', 'Kota Junction', 'New Delhi', '2025-12-26', 'AC 2-Tier', 'Confirmed'),
(26, 3, 'Anjali Singh', 35, 'Female', 'Surat', 'Vadodara Junction', '2025-12-27', 'AC 2-Tier', 'Confirmed'),
(27, 3, 'Vikram Das', 40, 'Male', 'Mumbai Central', 'New Delhi', '2025-12-27', 'AC First Class', 'Cancelled'),
(28, 3, 'Ritu Patel', 30, 'Female', 'Vadodara Junction', 'Surat', '2025-12-27', 'AC 2-Tier', 'Confirmed'),
(29, 3, 'Amit Mehta', 38, 'Male', 'Kota Junction', 'New Delhi', '2025-12-28', 'AC 2-Tier', 'Confirmed'),
(30, 3, 'Pooja Reddy', 29, 'Female', 'Mumbai Central', 'Vadodara Junction', '2025-12-28', 'AC First Class', 'Confirmed'),
(31, 4, 'Ritu Singh', 31, 'Female', 'Chennai Central', 'Mysuru', '2025-12-25', 'Executive Chair Car', 'Confirmed'),
(32, 4, 'Vivek Sharma', 40, 'Male', 'Chennai Central', 'Bangalore City', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(33, 4, 'Pallavi Jain', 29, 'Female', 'Bangalore City', 'Mysuru', '2025-12-25', 'Executive Chair Car', 'Confirmed'),
(34, 4, 'Sandeep Kumar', 36, 'Male', 'Chennai Central', 'Mysuru', '2025-12-26', 'AC Chair Car', 'Cancelled'),
(35, 4, 'Ankita Verma', 27, 'Female', 'Chennai Central', 'Mysuru', '2025-12-26', 'Executive Chair Car', 'Confirmed'),
(36, 4, 'Rahul Kapoor', 33, 'Male', 'Bangalore City', 'Mysuru', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(37, 4, 'Neha Reddy', 30, 'Female', 'Chennai Central', 'Bangalore City', '2025-12-27', 'Executive Chair Car', 'Confirmed'),
(38, 4, 'Vikram Singh', 41, 'Male', 'Chennai Central', 'Mysuru', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(39, 4, 'Pooja Mehta', 28, 'Female', 'Bangalore City', 'Mysuru', '2025-12-28', 'Executive Chair Car', 'Cancelled'),
(40, 4, 'Ankit Sharma', 35, 'Male', 'Chennai Central', 'Mysuru', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(41, 5, 'Rohit Sharma', 36, 'Male', 'Sealdah', 'Puri', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(42, 5, 'Neha Singh', 27, 'Female', 'Dhanbad Junction', 'Prayagraj', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(43, 5, 'Amit Patel', 40, 'Male', 'Howrah Junction', 'Kanpur Central', '2025-12-26', 'Sleeper', 'Confirmed'),
(44, 5, 'Sonia Verma', 31, 'Female', 'Gaya Junction', 'Puri', '2025-12-26', 'AC 3-Tier', 'Confirmed'),
(45, 5, 'Vikram Reddy', 38, 'Male', 'Sealdah', 'Puri', '2025-12-27', 'AC 3-Tier', 'Cancelled'),
(46, 5, 'Priya Sharma', 29, 'Female', 'Pt. Deen Dayal Upadhyaya Jn', 'Prayagraj', '2025-12-27', 'Sleeper', 'Confirmed'),
(47, 5, 'Suresh Kumar', 42, 'Male', 'Kanpur Central', 'Puri', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(48, 5, 'Anjali Mehta', 30, 'Female', 'Dhanbad Junction', 'Puri', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(49, 5, 'Rahul Verma', 35, 'Male', 'Howrah Junction', 'Prayagraj', '2025-12-29', 'Sleeper', 'Cancelled'),
(50, 5, 'Shreya Kapoor', 28, 'Female', 'Gaya Junction', 'Puri', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(51, 6, 'Aakash Verma', 28, 'Male', 'Chhatrapati Shivaji Maharaj Terminus', 'Goa', '2025-12-25', 'AC Executive', 'Confirmed'),
(52, 6, 'Ritu Sharma', 31, 'Female', 'Thane', 'Goa', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(53, 6, 'Suresh Kumar', 40, 'Male', 'Panvel', 'Madgaon', '2025-12-26', 'AC Executive', 'Confirmed'),
(54, 6, 'Priya Singh', 27, 'Female', 'Ratnagiri', 'Goa', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(55, 6, 'Vikram Mehta', 38, 'Male', 'Madgaon', 'Karmali', '2025-12-27', 'AC Executive', 'Confirmed'),
(56, 6, 'Anjali Reddy', 29, 'Female', 'Chhatrapati Shivaji Maharaj Terminus', 'Goa', '2025-12-27', 'AC Chair Car', 'Cancelled'),
(57, 6, 'Rohit Sharma', 35, 'Male', 'Thane', 'Karmali', '2025-12-28', 'AC Executive', 'Confirmed'),
(58, 6, 'Neha Kapoor', 30, 'Female', 'Panvel', 'Goa', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(59, 6, 'Rahul Verma', 33, 'Male', 'Ratnagiri', 'Karmali', '2025-12-29', 'AC Executive', 'Confirmed'),
(60, 6, 'Shreya Gupta', 28, 'Female', 'Madgaon', 'Karmali', '2025-12-29', 'AC Chair Car', 'Cancelled'),
(61, 7, 'Rohit Sharma', 35, 'Male', 'Bangalore', 'Varanasi', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(62, 7, 'Anjali Singh', 28, 'Female', 'Abu Road', 'Jaipur', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(63, 7, 'Vikram Reddy', 40, 'Male', 'Jodhpur', 'Agra Cantt', '2025-12-26', 'AC 3-Tier', 'Cancelled'),
(64, 7, 'Priya Sharma', 30, 'Female', 'Jaipur', 'Lucknow', '2025-12-26', 'AC 3-Tier', 'Confirmed'),
(65, 7, 'Suresh Kumar', 42, 'Male', 'Ahmedabad', 'Varanasi', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(66, 7, 'Neha Kapoor', 29, 'Female', 'Abu Road', 'Lucknow', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(67, 7, 'Rahul Verma', 35, 'Male', 'Jodhpur', 'Varanasi', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(68, 7, 'Shreya Gupta', 27, 'Female', 'Jaipur', 'Agra Cantt', '2025-12-28', 'AC 3-Tier', 'Cancelled'),
(69, 7, 'Aakash Mehta', 31, 'Male', 'Ahmedabad', 'Lucknow', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(70, 7, 'Pooja Sharma', 28, 'Female', 'Abu Road', 'Varanasi', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(71, 8, 'Rahul Sharma', 35, 'Male', 'Kolkata', 'Delhi', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(72, 8, 'Anjali Singh', 28, 'Female', 'Nashik Road', 'Bhusaval', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(73, 8, 'Vikram Reddy', 40, 'Male', 'Jabalpur', 'Satna', '2025-12-26', 'AC 3-Tier', 'Cancelled'),
(74, 8, 'Priya Sharma', 30, 'Female', 'Katni Junction', 'Varanasi', '2025-12-26', 'AC 3-Tier', 'Confirmed'),
(75, 8, 'Suresh Kumar', 42, 'Male', 'Lokmanya Tilak Terminus', 'Varanasi', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(76, 8, 'Neha Kapoor', 29, 'Female', 'Nashik Road', 'Satna', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(77, 8, 'Rahul Verma', 35, 'Male', 'Bhusaval', 'Varanasi', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(78, 8, 'Shreya Gupta', 27, 'Female', 'Jabalpur', 'Katni Junction', '2025-12-28', 'AC 3-Tier', 'Cancelled'),
(79, 8, 'Aakash Mehta', 31, 'Male', 'Satna', 'Varanasi', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(80, 8, 'Pooja Sharma', 28, 'Female', 'Lokmanya Tilak Terminus', 'Bhusaval', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(81, 9, 'Rohit Sharma', 36, 'Male', 'Pune', 'Mumbai CST', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(82, 9, 'Neha Singh', 27, 'Female', 'Lonavala', 'Dadar Central', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(83, 9, 'Amit Patel', 40, 'Male', 'Kalyan', 'Mumbai CST', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(84, 9, 'Sonia Verma', 31, 'Female', 'Dadar Central', 'Mumbai CST', '2025-12-26', 'AC Chair Car', 'Cancelled'),
(85, 9, 'Vikram Reddy', 38, 'Male', 'Pune', 'Mumbai CST', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(86, 9, 'Priya Sharma', 29, 'Female', 'Lonavala', 'Kalyan', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(87, 9, 'Suresh Kumar', 42, 'Male', 'Kalyan', 'Mumbai CST', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(88, 9, 'Anjali Mehta', 30, 'Female', 'Dadar Central', 'Mumbai CST', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(89, 9, 'Rahul Verma', 35, 'Male', 'Pune', 'Lonavala', '2025-12-29', 'AC Chair Car', 'Cancelled'),
(90, 9, 'Shreya Gupta', 28, 'Female', 'Kalyan', 'Mumbai CST', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(91, 10, 'Aakash Verma', 28, 'Male', 'Bangalore', 'Hazrat Nizamuddin', '2025-12-25', 'AC 2-Tier', 'Confirmed'),
(92, 10, 'Ritu Sharma', 31, 'Female', 'Dharmavaram', 'Kurnool City', '2025-12-25', 'AC 2-Tier', 'Confirmed'),
(93, 10, 'Suresh Kumar', 40, 'Male', 'Kurnool City', 'Kacheguda', '2025-12-26', 'AC 2-Tier', 'Confirmed'),
(94, 10, 'Priya Singh', 27, 'Female', 'Kacheguda', 'Nagpur', '2025-12-26', 'AC 2-Tier', 'Confirmed'),
(95, 10, 'Vikram Mehta', 38, 'Male', 'Nagpur', 'Bhopal Junction', '2025-12-27', 'AC 2-Tier', 'Confirmed'),
(96, 10, 'Anjali Reddy', 29, 'Female', 'Bhopal Junction', 'Jhansi Junction', '2025-12-27', 'AC 2-Tier', 'Confirmed'),
(97, 10, 'Rohit Sharma', 35, 'Male', 'Jhansi Junction', 'Hazrat Nizamuddin', '2025-12-28', 'AC 2-Tier', 'Confirmed'),
(98, 10, 'Neha Kapoor', 30, 'Female', 'Bangalore', 'Hazrat Nizamuddin', '2025-12-28', 'AC 2-Tier', 'Cancelled'),
(99, 10, 'Rahul Verma', 33, 'Male', 'Dharmavaram', 'Nagpur', '2025-12-29', 'AC 2-Tier', 'Confirmed'),
(100, 10, 'Shreya Gupta', 28, 'Female', 'Kurnool City', 'Hazrat Nizamuddin', '2025-12-29', 'AC 2-Tier', 'Confirmed'),
(101, 11, 'Rohit Sharma', 35, 'Male', 'Darbhanga', 'Jalandhar City', '2025-12-25', 'General', 'Confirmed'),
(102, 11, 'Anjali Singh', 28, 'Female', 'Samastipur', 'Jalandhar City', '2025-12-25', 'General', 'Confirmed'),
(103, 11, 'Vikram Reddy', 40, 'Male', 'Muzaffarpur', 'Jalandhar City', '2025-12-26', 'General', 'Cancelled'),
(104, 11, 'Priya Sharma', 30, 'Female', 'Gorakhpur', 'Jalandhar City', '2025-12-26', 'General', 'Confirmed'),
(105, 11, 'Suresh Kumar', 42, 'Male', 'Lucknow', 'Jalandhar City', '2025-12-27', 'General', 'Confirmed'),
(106, 11, 'Neha Kapoor', 29, 'Female', 'Darbhanga', 'Jalandhar City', '2025-12-27', 'General', 'Confirmed'),
(107, 11, 'Rahul Verma', 35, 'Male', 'Samastipur', 'Jalandhar City', '2025-12-28', 'General', 'Confirmed'),
(108, 11, 'Shreya Gupta', 27, 'Female', 'Muzaffarpur', 'Jalandhar City', '2025-12-28', 'General', 'Cancelled'),
(109, 11, 'Aakash Mehta', 31, 'Male', 'Gorakhpur', 'Jalandhar City', '2025-12-29', 'General', 'Confirmed'),
(110, 11, 'Pooja Sharma', 28, 'Female', 'Lucknow', 'Jalandhar City', '2025-12-29', 'General', 'Confirmed'),
(111, 12, 'Rohit Sharma', 36, 'Male', 'Patna', 'Bangalore', '2025-12-25', 'Premium Tatkal', 'Confirmed'),
(112, 12, 'Neha Singh', 27, 'Female', 'Ara', 'Bangalore', '2025-12-25', 'Premium Tatkal', 'Confirmed'),
(113, 12, 'Amit Patel', 40, 'Male', 'Buxar', 'Bangalore', '2025-12-26', 'Premium Tatkal', 'Cancelled'),
(114, 12, 'Sonia Verma', 31, 'Female', 'Varanasi', 'Bangalore', '2025-12-26', 'Premium Tatkal', 'Confirmed'),
(115, 12, 'Vikram Reddy', 38, 'Male', 'Prayagraj', 'Bangalore', '2025-12-27', 'Premium Tatkal', 'Confirmed'),
(116, 12, 'Priya Sharma', 29, 'Female', 'Patna', 'Bangalore', '2025-12-27', 'Premium Tatkal', 'Confirmed'),
(117, 12, 'Suresh Kumar', 42, 'Male', 'Ara', 'Bangalore', '2025-12-28', 'Premium Tatkal', 'Confirmed'),
(118, 12, 'Anjali Mehta', 30, 'Female', 'Buxar', 'Bangalore', '2025-12-28', 'Premium Tatkal', 'Confirmed'),
(119, 12, 'Rahul Verma', 35, 'Male', 'Varanasi', 'Bangalore', '2025-12-29', 'Premium Tatkal', 'Cancelled'),
(120, 12, 'Shreya Gupta', 28, 'Female', 'Prayagraj', 'Bangalore', '2025-12-29', 'Premium Tatkal', 'Confirmed'),
(121, 13, 'Rohit Sharma', 35, 'Male', 'Jaipur', 'Delhi Sarai Rohilla', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(122, 13, 'Anjali Singh', 28, 'Female', 'Gandhi Nagar Jaipur', 'Delhi Sarai Rohilla', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(123, 13, 'Vikram Reddy', 40, 'Male', 'Dausa', 'Delhi Sarai Rohilla', '2025-12-26', 'AC Chair Car', 'Cancelled'),
(124, 13, 'Priya Sharma', 30, 'Female', 'Alwar', 'Delhi Sarai Rohilla', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(125, 13, 'Suresh Kumar', 42, 'Male', 'Rewari', 'Delhi Sarai Rohilla', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(126, 13, 'Neha Kapoor', 29, 'Female', 'Gurgaon', 'Delhi Sarai Rohilla', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(127, 13, 'Rahul Verma', 35, 'Male', 'Jaipur', 'Delhi Sarai Rohilla', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(128, 13, 'Shreya Gupta', 27, 'Female', 'Gandhi Nagar Jaipur', 'Delhi Sarai Rohilla', '2025-12-28', 'AC Chair Car', 'Cancelled'),
(129, 13, 'Aakash Mehta', 31, 'Male', 'Dausa', 'Delhi Sarai Rohilla', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(130, 13, 'Pooja Sharma', 28, 'Female', 'Alwar', 'Delhi Sarai Rohilla', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(131, 14, 'Rohit Sharma', 35, 'Male', 'Pune', 'Mumbai CST', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(132, 14, 'Neha Singh', 28, 'Female', 'Lonavala', 'Mumbai CST', '2025-12-25', 'AC Chair Car', 'Confirmed'),
(133, 14, 'Vikram Reddy', 40, 'Male', 'Kalyan', 'Mumbai CST', '2025-12-26', 'AC Chair Car', 'Cancelled'),
(134, 14, 'Priya Sharma', 30, 'Female', 'Dadar', 'Mumbai CST', '2025-12-26', 'AC Chair Car', 'Confirmed'),
(135, 14, 'Suresh Kumar', 42, 'Male', 'Pune', 'Mumbai CST', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(136, 14, 'Anjali Mehta', 29, 'Female', 'Lonavala', 'Mumbai CST', '2025-12-27', 'AC Chair Car', 'Confirmed'),
(137, 14, 'Rahul Verma', 35, 'Male', 'Kalyan', 'Mumbai CST', '2025-12-28', 'AC Chair Car', 'Confirmed'),
(138, 14, 'Shreya Gupta', 28, 'Female', 'Dadar', 'Mumbai CST', '2025-12-28', 'AC Chair Car', 'Cancelled'),
(139, 14, 'Aakash Mehta', 31, 'Male', 'Pune', 'Mumbai CST', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(140, 14, 'Pooja Sharma', 28, 'Female', 'Lonavala', 'Mumbai CST', '2025-12-29', 'AC Chair Car', 'Confirmed'),
(141, 15, 'Rohit Sharma', 35, 'Male', 'Ahmedabad', 'New Delhi', '2025-12-25', 'Sleeper', 'Confirmed'),
(142, 15, 'Neha Singh', 28, 'Female', 'Abu Road', 'New Delhi', '2025-12-25', 'Sleeper', 'Confirmed'),
(143, 15, 'Vikram Reddy', 40, 'Male', 'Jaipur', 'New Delhi', '2025-12-26', 'Sleeper', 'Cancelled'),
(144, 15, 'Priya Sharma', 30, 'Female', 'Ahmedabad', 'Jaipur', '2025-12-26', 'Sleeper', 'Confirmed'),
(145, 15, 'Suresh Kumar', 42, 'Male', 'Abu Road', 'New Delhi', '2025-12-27', 'Sleeper', 'Confirmed'),
(146, 15, 'Anjali Mehta', 29, 'Female', 'Jaipur', 'New Delhi', '2025-12-27', 'Sleeper', 'Confirmed'),
(147, 15, 'Rahul Verma', 35, 'Male', 'Ahmedabad', 'New Delhi', '2025-12-28', 'Sleeper', 'Confirmed'),
(148, 15, 'Shreya Gupta', 28, 'Female', 'Abu Road', 'New Delhi', '2025-12-28', 'Sleeper', 'Cancelled'),
(149, 15, 'Aakash Mehta', 31, 'Male', 'Jaipur', 'New Delhi', '2025-12-29', 'Sleeper', 'Confirmed'),
(150, 15, 'Pooja Sharma', 28, 'Female', 'Ahmedabad', 'New Delhi', '2025-12-29', 'Sleeper', 'Confirmed'),
(151, 16, 'Rohit Sharma', 35, 'Male', 'Delhi Sarai Rohilla', 'Howrah', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(152, 16, 'Neha Singh', 28, 'Female', 'Kanpur Central', 'Howrah', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(153, 16, 'Vikram Reddy', 40, 'Male', 'Dhanbad', 'Howrah', '2025-12-26', 'AC 3-Tier', 'Cancelled'),
(154, 16, 'Priya Sharma', 30, 'Female', 'Howrah', 'Howrah', '2025-12-26', 'AC 3-Tier', 'Confirmed'),
(155, 16, 'Suresh Kumar', 42, 'Male', 'Delhi Sarai Rohilla', 'Howrah', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(156, 16, 'Anjali Mehta', 29, 'Female', 'Kanpur Central', 'Howrah', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(157, 16, 'Rahul Verma', 35, 'Male', 'Dhanbad', 'Howrah', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(158, 16, 'Shreya Gupta', 28, 'Female', 'Howrah', 'Howrah', '2025-12-28', 'AC 3-Tier', 'Cancelled'),
(159, 16, 'Aakash Mehta', 31, 'Male', 'Delhi Sarai Rohilla', 'Howrah', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(160, 16, 'Pooja Sharma', 28, 'Female', 'Kanpur Central', 'Howrah', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(161, 17, 'Rohit Sharma', 35, 'Male', 'Bettiah', 'Anand Vihar Terminal', '2025-12-25', 'Sleeper', 'Confirmed'),
(162, 17, 'Neha Singh', 28, 'Female', 'Muzaffarpur', 'Anand Vihar Terminal', '2025-12-25', 'Sleeper', 'Confirmed'),
(163, 17, 'Vikram Reddy', 40, 'Male', 'Patna', 'Anand Vihar Terminal', '2025-12-26', 'Sleeper', 'Cancelled'),
(164, 17, 'Priya Sharma', 30, 'Female', 'Pt. Deen Dayal Upadhyaya Jn', 'Anand Vihar Terminal', '2025-12-26', 'Sleeper', 'Confirmed'),
(165, 17, 'Suresh Kumar', 42, 'Male', 'Bettiah', 'Anand Vihar Terminal', '2025-12-27', 'Sleeper', 'Confirmed'),
(166, 17, 'Anjali Mehta', 29, 'Female', 'Muzaffarpur', 'Anand Vihar Terminal', '2025-12-27', 'Sleeper', 'Confirmed'),
(167, 17, 'Rahul Verma', 35, 'Male', 'Patna', 'Anand Vihar Terminal', '2025-12-28', 'Sleeper', 'Confirmed'),
(168, 17, 'Shreya Gupta', 28, 'Female', 'Pt. Deen Dayal Upadhyaya Jn', 'Anand Vihar Terminal', '2025-12-28', 'Sleeper', 'Cancelled'),
(169, 17, 'Aakash Mehta', 31, 'Male', 'Bettiah', 'Anand Vihar Terminal', '2025-12-29', 'Sleeper', 'Confirmed'),
(170, 17, 'Pooja Sharma', 28, 'Female', 'Muzaffarpur', 'Anand Vihar Terminal', '2025-12-29', 'Sleeper', 'Confirmed'),
(171, 18, 'Rohit Sharma', 35, 'Male', 'Nagpur', 'Amritsar', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(172, 18, 'Neha Singh', 28, 'Female', 'Betul', 'Amritsar', '2025-12-25', 'AC 3-Tier', 'Confirmed'),
(173, 18, 'Vikram Reddy', 40, 'Male', 'Itarsi', 'Amritsar', '2025-12-26', 'AC 3-Tier', 'Cancelled'),
(174, 18, 'Priya Sharma', 30, 'Female', 'Bhopal', 'Amritsar', '2025-12-26', 'AC 3-Tier', 'Confirmed'),
(175, 18, 'Suresh Kumar', 42, 'Male', 'Jhansi', 'Amritsar', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(176, 18, 'Anjali Mehta', 29, 'Female', 'Agra Cantt', 'Amritsar', '2025-12-27', 'AC 3-Tier', 'Confirmed'),
(177, 18, 'Rahul Verma', 35, 'Male', 'New Delhi', 'Amritsar', '2025-12-28', 'AC 3-Tier', 'Confirmed'),
(178, 18, 'Shreya Gupta', 28, 'Female', 'Nagpur', 'Amritsar', '2025-12-28', 'AC 3-Tier', 'Cancelled'),
(179, 18, 'Aakash Mehta', 31, 'Male', 'Betul', 'Amritsar', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(180, 18, 'Pooja Sharma', 28, 'Female', 'Itarsi', 'Amritsar', '2025-12-29', 'AC 3-Tier', 'Confirmed'),
(181, 19, 'Rohit Sharma', 35, 'Male', 'Sitamarhi', 'Howrah', '2025-12-25', 'Sleeper', 'Confirmed'),
(182, 19, 'Neha Singh', 28, 'Female', 'Darbhanga', 'Howrah', '2025-12-25', 'Sleeper', 'Confirmed'),
(183, 19, 'Vikram Reddy', 40, 'Male', 'Samastipur', 'Howrah', '2025-12-26', 'Sleeper', 'Cancelled'),
(184, 19, 'Priya Sharma', 30, 'Female', 'Mokama', 'Howrah', '2025-12-26', 'Sleeper', 'Confirmed'),
(185, 19, 'Suresh Kumar', 42, 'Male', 'Patna', 'Howrah', '2025-12-27', 'Sleeper', 'Confirmed'),
(186, 19, 'Anjali Mehta', 29, 'Female', 'Sitamarhi', 'Howrah', '2025-12-27', 'Sleeper', 'Confirmed'),
(187, 19, 'Rahul Verma', 35, 'Male', 'Darbhanga', 'Howrah', '2025-12-28', 'Sleeper', 'Confirmed'),
(188, 19, 'Shreya Gupta', 28, 'Female', 'Samastipur', 'Howrah', '2025-12-28', 'Sleeper', 'Cancelled'),
(189, 19, 'Aakash Mehta', 31, 'Male', 'Mokama', 'Howrah', '2025-12-29', 'Sleeper', 'Confirmed'),
(190, 19, 'Pooja Sharma', 28, 'Female', 'Patna', 'Howrah', '2025-12-29', 'Sleeper', 'Confirmed'),
(191, 20, 'Rohit Sharma', 35, 'Male', 'Darbhanga', 'Anand Vihar Terminal', '2025-12-25', 'Economy', 'Confirmed'),
(192, 20, 'Neha Singh', 28, 'Female', 'Samastipur', 'Anand Vihar Terminal', '2025-12-25', 'Economy', 'Confirmed'),
(193, 20, 'Vikram Reddy', 40, 'Male', 'Muzaffarpur', 'Anand Vihar Terminal', '2025-12-26', 'Economy', 'Cancelled'),
(194, 20, 'Priya Sharma', 30, 'Female', 'Patna', 'Anand Vihar Terminal', '2025-12-26', 'Economy', 'Confirmed'),
(195, 20, 'Suresh Kumar', 42, 'Male', 'Darbhanga', 'Anand Vihar Terminal', '2025-12-27', 'Economy', 'Confirmed'),
(196, 20, 'Anjali Mehta', 29, 'Female', 'Samastipur', 'Anand Vihar Terminal', '2025-12-27', 'Economy', 'Confirmed'),
(197, 20, 'Rahul Verma', 35, 'Male', 'Muzaffarpur', 'Anand Vihar Terminal', '2025-12-28', 'Economy', 'Confirmed'),
(198, 20, 'Shreya Gupta', 28, 'Female', 'Patna', 'Anand Vihar Terminal', '2025-12-28', 'Economy', 'Cancelled'),
(199, 20, 'Aakash Mehta', 31, 'Male', 'Darbhanga', 'Anand Vihar Terminal', '2025-12-29', 'Economy', 'Confirmed'),
(200, 20, 'Pooja Sharma', 28, 'Female', 'Samastipur', 'Anand Vihar Terminal', '2025-12-29', 'Economy', 'Confirmed');

select * from Booking;

DELETE FROM booking
WHERE BookingID = 180;

INSERT INTO Booking (BookingID, TrainID, PassengerName, Age, Gender, FromStation, ToStation, DateOfJourney, SeatClass, Status) VALUES
(180, 18, 'Pooja Sharma', 28, 'Female',
 'Itarsi', 'Amritsar', '2025-12-29', 'AC 3-Tier', 'Confirmed');
SET SQL_SAFE_UPDATES = 0;
 update booking
 SET Gender = 'F'
 WHERE PassengerName = 'Pooja Sharma'AND Age = 28;

INSERT INTO Payment (PaymentID, BookingID, AmountPaid, PaymentMode, PaymentStatus, PaymentDate) VALUES
(1, 1, 450.50, 'UPI', 'Paid', '2025-01-15'),
(2, 2, 452.75, 'Card', 'Paid', '2025-02-20'),
(3, 3, 449.25, 'Cash', 'Pending', '2025-03-05'),
(4, 4, 451.00, 'UPI', 'Paid', '2025-04-10'),
(5, 5, 450.75, 'Card', 'Paid', '2025-05-12'),
(6, 6, 448.50, 'Cash', 'Pending', '2025-06-18'),
(7, 7, 452.00, 'UPI', 'Paid', '2025-07-22'),
(8, 8, 450.25, 'Card', 'Paid', '2025-08-25'),
(9, 9, 451.50, 'UPI', 'Paid', '2025-09-30'),
(10, 10, 449.75, 'Cash', 'Pending', '2025-10-03'),
(11, 11, 1200.50, 'Card', 'Paid', '2025-01-07'),
(12, 12, 1201.25, 'UPI', 'Paid', '2025-02-14'),
(13, 13, 1199.75, 'Cash', 'Pending', '2025-03-21'),
(14, 14, 1202.00, 'Card', 'Paid', '2025-04-09'),
(15, 15, 1200.80, 'UPI', 'Paid', '2025-05-16'),
(16, 16, 1201.50, 'Cash', 'Pending', '2025-06-27'),
(17, 17, 1200.25, 'Card', 'Paid', '2025-07-11'),
(18, 18, 1202.75, 'UPI', 'Paid', '2025-08-29'),
(19, 19, 1200.40, 'Cash', 'Pending', '2025-09-15'),
(20, 20, 1201.60, 'UPI', 'Paid', '2025-10-21'),
(21, 21, 460.75, 'Card', 'Paid', '2025-01-12'),
(22, 22, 455.50, 'UPI', 'Paid', '2025-02-18'),
(23, 23, 458.25, 'Cash', 'Pending', '2025-03-23'),
(24, 24, 462.00, 'UPI', 'Paid', '2025-04-05'),
(25, 25, 459.80, 'Card', 'Paid', '2025-05-14'),
(26, 26, 457.60, 'Cash', 'Pending', '2025-06-19'),
(27, 27, 461.50, 'UPI', 'Paid', '2025-07-21'),
(28, 28, 458.90, 'Card', 'Paid', '2025-08-27'),
(29, 29, 460.20, 'UPI', 'Paid', '2025-09-08'),
(30, 30, 456.75, 'Cash', 'Pending', '2025-10-13'),
(31, 31, 1210.50, 'Card', 'Paid', '2025-01-09'),
(32, 32, 1205.25, 'UPI', 'Paid', '2025-02-16'),
(33, 33, 1208.75, 'Cash', 'Pending', '2025-03-21'),
(34, 34, 1212.00, 'Card', 'Paid', '2025-04-04'),
(35, 35, 1209.80, 'UPI', 'Paid', '2025-05-11'),
(36, 36, 1207.60, 'Cash', 'Pending', '2025-06-17'),
(37, 37, 1211.50, 'UPI', 'Paid', '2025-07-23'),
(38, 38, 1208.90, 'Card', 'Paid', '2025-08-09'),
(39, 39, 1210.20, 'UPI', 'Paid', '2025-09-14'),
(40, 40, 1206.75, 'Cash', 'Pending', '2025-10-20'),
(41, 41, 470.50, 'Card', 'Paid', '2025-01-06'),
(42, 42, 468.25, 'UPI', 'Paid', '2025-02-12'),
(43, 43, 465.75, 'Cash', 'Pending', '2025-03-18'),
(44, 44, 472.00, 'Card', 'Paid', '2025-04-08'),
(45, 45, 469.80, 'UPI', 'Paid', '2025-05-15'),
(46, 46, 467.60, 'Cash', 'Pending', '2025-06-20'),
(47, 47, 471.50, 'UPI', 'Paid', '2025-07-18'),
(48, 48, 468.90, 'Card', 'Paid', '2025-08-25'),
(49, 49, 470.20, 'UPI', 'Paid', '2025-09-22'),
(50, 50, 466.75, 'Cash', 'Pending', '2025-10-28'),
(51, 51, 455.50, 'UPI', 'Paid', '2025-01-05'),
(52, 52, 457.75, 'Card', 'Paid', '2025-02-11'),
(53, 53, 459.25, 'Cash', 'Pending', '2025-03-14'),
(54, 54, 456.80, 'UPI', 'Paid', '2025-04-09'),
(55, 55, 458.60, 'Card', 'Paid', '2025-05-20'),
(56, 56, 457.90, 'Cash', 'Pending', '2025-06-07'),
(57, 57, 460.25, 'UPI', 'Paid', '2025-07-16'),
(58, 58, 459.50, 'Card', 'Paid', '2025-08-23'),
(59, 59, 461.75, 'UPI', 'Paid', '2025-09-12'),
(60, 60, 458.40, 'Cash', 'Pending', '2025-10-04'),
(61, 61, 1215.50, 'Card', 'Paid', '2025-01-19'),
(62, 62, 1212.25, 'UPI', 'Paid', '2025-02-21'),
(63, 63, 1210.75, 'Cash', 'Pending', '2025-03-06'),
(64, 64, 1213.00, 'UPI', 'Paid', '2025-04-13'),
(65, 65, 1211.80, 'Card', 'Paid', '2025-05-22'),
(66, 66, 1209.60, 'Cash', 'Pending', '2025-06-02'),
(67, 67, 1214.50, 'UPI', 'Paid', '2025-07-25'),
(68, 68, 1212.90, 'Card', 'Paid', '2025-08-11'),
(69, 69, 1213.20, 'UPI', 'Paid', '2025-09-19'),
(70, 70, 1210.75, 'Cash', 'Pending', '2025-10-07'),
(71, 71, 465.50, 'UPI', 'Paid', '2025-01-08'),
(72, 72, 467.25, 'Card', 'Paid', '2025-02-16'),
(73, 73, 466.75, 'Cash', 'Pending', '2025-03-24'),
(74, 74, 469.00, 'UPI', 'Paid', '2025-04-12'),
(75, 75, 468.80, 'Card', 'Paid', '2025-05-09'),
(76, 76, 467.60, 'Cash', 'Pending', '2025-06-18'),
(77, 77, 470.50, 'UPI', 'Paid', '2025-07-29'),
(78, 78, 468.90, 'Card', 'Paid', '2025-08-05'),
(79, 79, 469.20, 'UPI', 'Paid', '2025-09-26'),
(80, 80, 466.75, 'Cash', 'Pending', '2025-10-15'),
(81, 81, 460.50, 'UPI', 'Paid', '2025-01-03'),
(82, 82, 459.25, 'Card', 'Paid', '2025-02-08'),
(83, 83, 461.75, 'Cash', 'Pending', '2025-03-11'),
(84, 84, 460.80, 'UPI', 'Paid', '2025-04-07'),
(85, 85, 462.60, 'Card', 'Paid', '2025-05-18'),
(86, 86, 461.90, 'Cash', 'Pending', '2025-06-25'),
(87, 87, 464.25, 'UPI', 'Paid', '2025-07-02'),
(88, 88, 463.50, 'Card', 'Paid', '2025-08-21'),
(89, 89, 465.75, 'UPI', 'Paid', '2025-09-09'),
(90, 90, 463.40, 'Cash', 'Pending', '2025-10-28'),
(91, 91, 1220.50, 'Card', 'Paid', '2025-01-14'),
(92, 92, 1218.25, 'UPI', 'Paid', '2025-02-19'),
(93, 93, 1219.75, 'Cash', 'Pending', '2025-03-23'),
(94, 94, 1222.00, 'Card', 'Paid', '2025-04-15'),
(95, 95, 1220.80, 'UPI', 'Paid', '2025-05-27'),
(96, 96, 1219.60, 'Cash', 'Pending', '2025-06-30'),
(97, 97, 1221.50, 'UPI', 'Paid', '2025-07-10'),
(98, 98, 1218.90, 'Card', 'Paid', '2025-08-14'),
(99, 99, 1220.20, 'UPI', 'Paid', '2025-09-18'),
(100, 100, 1216.75, 'Cash', 'Pending', '2025-10-26'),
(101, 101, 455.80, 'UPI', 'Paid', '2025-01-04'),
(102, 102, 457.50, 'Card', 'Paid', '2025-02-15'),
(103, 103, 456.75, 'Cash', 'Pending', '2025-03-09'),
(104, 104, 459.20, 'UPI', 'Paid', '2025-04-21'),
(105, 105, 458.60, 'Card', 'Paid', '2025-05-07'),
(106, 106, 457.90, 'Cash', 'Pending', '2025-06-13'),
(107, 107, 460.25, 'UPI', 'Paid', '2025-07-05'),
(108, 108, 459.50, 'Card', 'Paid', '2025-08-17'),
(109, 109, 461.75, 'UPI', 'Paid', '2025-09-29'),
(110, 110, 458.40, 'Cash', 'Pending', '2025-10-03'),
(111, 111, 1215.50, 'Card', 'Paid', '2025-01-11'),
(112, 112, 1212.25, 'UPI', 'Paid', '2025-02-22'),
(113, 113, 1210.75, 'Cash', 'Pending', '2025-03-06'),
(114, 114, 1213.00, 'Card', 'Paid', '2025-04-12'),
(115, 115, 1211.80, 'UPI', 'Paid', '2025-05-26'),
(116, 116, 1209.60, 'Cash', 'Pending', '2025-06-30'),
(117, 117, 1214.50, 'UPI', 'Paid', '2025-07-14'),
(118, 118, 1212.90, 'Card', 'Paid', '2025-08-21'),
(119, 119, 1213.20, 'UPI', 'Paid', '2025-09-16'),
(120, 120, 1210.75, 'Cash', 'Pending', '2025-10-29'),
(121, 121, 465.50, 'UPI', 'Paid', '2025-01-06'),
(122, 122, 467.25, 'Card', 'Paid', '2025-02-13'),
(123, 123, 466.75, 'Cash', 'Pending', '2025-03-20'),
(124, 124, 469.00, 'UPI', 'Paid', '2025-04-11'),
(125, 125, 468.80, 'Card', 'Paid', '2025-05-18'),
(126, 126, 467.60, 'Cash', 'Pending', '2025-06-22'),
(127, 127, 470.50, 'UPI', 'Paid', '2025-07-09'),
(128, 128, 468.90, 'Card', 'Paid', '2025-08-14'),
(129, 129, 469.20, 'UPI', 'Paid', '2025-09-25'),
(130, 130, 466.75, 'Cash', 'Pending', '2025-10-19'),
(131, 131, 460.50, 'UPI', 'Paid', '2025-01-02'),
(132, 132, 459.25, 'Card', 'Paid', '2025-02-08'),
(133, 133, 461.75, 'Cash', 'Pending', '2025-03-15'),
(134, 134, 460.80, 'UPI', 'Paid', '2025-04-06'),
(135, 135, 462.60, 'Card', 'Paid', '2025-05-23'),
(136, 136, 461.90, 'Cash', 'Pending', '2025-06-29'),
(137, 137, 464.25, 'UPI', 'Paid', '2025-07-12'),
(138, 138, 463.50, 'Card', 'Paid', '2025-08-20'),
(139, 139, 465.75, 'UPI', 'Paid', '2025-09-17'),
(140, 140, 463.40, 'Cash', 'Pending', '2025-10-28'),
(141, 141, 1220.50, 'Card', 'Paid', '2025-01-19'),
(142, 142, 1218.25, 'UPI', 'Paid', '2025-02-21'),
(143, 143, 1219.75, 'Cash', 'Pending', '2025-03-25'),
(144, 144, 1222.00, 'Card', 'Paid', '2025-04-15'),
(145, 145, 1220.80, 'UPI', 'Paid', '2025-05-27'),
(146, 146, 1219.60, 'Cash', 'Pending', '2025-06-30'),
(147, 147, 1221.50, 'UPI', 'Paid', '2025-07-10'),
(148, 148, 1218.90, 'Card', 'Paid', '2025-08-14'),
(149, 149, 1220.20, 'UPI', 'Paid', '2025-09-18'),
(150, 150, 1216.75, 'Cash', 'Pending', '2025-10-26'),
(151, 151, 458.50, 'UPI', 'Paid', '2025-01-08'),
(152, 152, 459.75, 'Card', 'Paid', '2025-02-11'),
(153, 153, 460.25, 'Cash', 'Pending', '2025-03-14'),
(154, 154, 457.80, 'UPI', 'Paid', '2025-04-09'),
(155, 155, 459.60, 'Card', 'Paid', '2025-05-20'),
(156, 156, 458.90, 'Cash', 'Pending', '2025-06-07'),
(157, 157, 461.25, 'UPI', 'Paid', '2025-07-16'),
(158, 158, 460.50, 'Card', 'Paid', '2025-08-23'),
(159, 159, 462.75, 'UPI', 'Paid', '2025-09-12'),
(160, 160, 459.40, 'Cash', 'Pending', '2025-10-04'),
(161, 161, 1217.50, 'Card', 'Paid', '2025-01-09'),
(162, 162, 1214.25, 'UPI', 'Paid', '2025-02-16'),
(163, 163, 1212.75, 'Cash', 'Pending', '2025-03-21'),
(164, 164, 1215.00, 'Card', 'Paid', '2025-04-11'),
(165, 165, 1213.80, 'UPI', 'Paid', '2025-05-17'),
(166, 166, 1211.60, 'Cash', 'Pending', '2025-06-20'),
(167, 167, 1216.50, 'UPI', 'Paid', '2025-07-22'),
(168, 168, 1214.90, 'Card', 'Paid', '2025-08-19'),
(169, 169, 1215.20, 'UPI', 'Paid', '2025-09-15'),
(170, 170, 1212.75, 'Cash', 'Pending', '2025-10-28'),
(171, 171, 467.50, 'UPI', 'Paid', '2025-01-03'),
(172, 172, 468.25, 'Card', 'Paid', '2025-02-10'),
(173, 173, 469.75, 'Cash', 'Pending', '2025-03-12'),
(174, 174, 466.00, 'UPI', 'Paid', '2025-04-07'),
(175, 175, 468.80, 'Card', 'Paid', '2025-05-15'),
(176, 176, 467.60, 'Cash', 'Pending', '2025-06-18'),
(177, 177, 470.50, 'UPI', 'Paid', '2025-07-29'),
(178, 178, 468.90, 'Card', 'Paid', '2025-08-05'),
(179, 179, 469.20, 'UPI', 'Paid', '2025-09-22'),
(180, 180, 466.75, 'Cash', 'Pending', '2025-10-12'),
(181, 181, 461.50, 'UPI', 'Paid', '2025-01-14'),
(182, 182, 460.25, 'Card', 'Paid', '2025-02-18'),
(183, 183, 462.75, 'Cash', 'Pending', '2025-03-20'),
(184, 184, 461.80, 'UPI', 'Paid', '2025-04-05'),
(185, 185, 463.60, 'Card', 'Paid', '2025-05-21'),
(186, 186, 462.90, 'Cash', 'Pending', '2025-06-30'),
(187, 187, 465.25, 'UPI', 'Paid', '2025-07-12'),
(188, 188, 464.50, 'Card', 'Paid', '2025-08-28'),
(189, 189, 466.75, 'UPI', 'Paid', '2025-09-17'),
(190, 190, 464.40, 'Cash', 'Pending', '2025-10-25'),
(191, 191, 1222.50, 'Card', 'Paid', '2025-01-06'),
(192, 192, 1220.25, 'UPI', 'Paid', '2025-02-13'),
(193, 193, 1221.75, 'Cash', 'Pending', '2025-03-19'),
(194, 194, 1224.00, 'Card', 'Paid', '2025-04-16'),
(195, 195, 1222.80, 'UPI', 'Paid', '2025-05-26'),
(196, 196, 1221.60, 'Cash', 'Pending', '2025-06-28'),
(197, 197, 1223.50, 'UPI', 'Paid', '2025-07-15'),
(198, 198, 1220.90, 'Card', 'Paid', '2025-08-23'),
(199, 199, 1222.20, 'UPI', 'Paid', '2025-09-18'),
(200, 200, 1218.75, 'Cash', 'Pending', '2025-10-30');

select * from payment ;



--- 1. Display all trains available in the system.
select * from Train;


--- 2.List all trains that operate daily.
select TrainID,TrainName,SourceStation,DestinationStation,DaysOfOperation
from Train
where DaysOfOperation = 'Daily';


--- 3.Display all booking details.
select * from booking;

--- 4. Show all confirmed bookings.
select * from booking
where Status = 'Confirmed';

--- 5.Show paid payment records
select * from payment
where PaymentStatus = 'Paid';

--- 6.Bookings for a specific train
select * from booking
where TrainID = '10';

--- 7.Payments done using UPI
select * from payment
where  paymentMode = 'UPI';

--- 8.Booking count train-wise
select TrainID ,count(*) AS TotalBooking
from booking
Group by TrainID;

--- 9. Total revenue from paid payments
select sum(AmountPaid) as TotalRevenue
from payment
where PaymentStatus = 'paid';

--- 10 . Write an SQL query to calculate month-wise total revenue from the payment table for the year 2025.
select month(PaymentDate) as Month , sum(AmountPaid) as TotalRevenue
From payment
where year(paymentDate) = '2025'
group by month(PaymentDate);

--- 11.Calculate the average ticket amount paid by passengers for confirmed and paid bookings.
select avg(AmountPaid) AS AVRAGE
 from payment
 where paymentStatus = 'paid';

--- 12. Display the total number of payments made using each payment mode such as UPI, Card, or Cash.
select PaymentMode,count(*) as Total
from payment
group by PaymentMode;


--- 13.Find the train which has the maximum number of stops in its route.
SELECT TrainID,count(*) as Totalstops
from route
group by TrainID
order by Totalstops desc;






--- 14. Display booking details along with train name and train type by joining Train and Booking tables.
select B.BookingID,B.PassengerName,B.DateOfJourney,B.SeatClass,B.Status,T.TrainName,T.Traintype
From booking as B
join Train as T
on B.TrainID = T.TrainID
order by BookingID;


--- 15.Retrieve passenger name, train name, journey date, and payment status.
select B.passengerName,T.TrainName,B.DateOfJourney,P.PaymentStatus
from booking as B
Join Train as T
on B.TrainID = T.TrainID
join payment as P
on B.BookingID = P.BookingID;

--- 16.Find the train which has the maximum number of bookings.
select T.TrainName,count(BookingID) as TotalBookings
From booking as b
join Train as T
on B.TrainID = T.TrainID
group by TrainName
order by TotalBookings desc
limit 1;


--- 17.Calculate total revenue generated by each train.
select T.TrainName,sum(P.AmountPaid) As Totalrevenue
From Train as T
LEFT join Booking as B
on B.TrainID = T.TrainID
LEFT join Payment as P
on B.BookingID = P.BookingId
WHERE PaymentStatus = 'paid'
group by TrainName;

SELECT*FROM train;
--- 18.Display the list of passengers who traveled in AC class.
select PassengerName,TrainID,SeatClass
From booking
where SeatClass Like '%AC%' ;

--- 19.Find the passenger who has paid the highest total amount
select B.PassengerName,sum(AmountPaid) as TotalPaid
from booking as B
join Payment as p
on B.BookingID = P.BookingID
where PaymentStatus = 'paid'
group by B.passengerName
order by TotalPaid desc
Limit 1 ;

--- 20.Passengers who booked more than one train
select passengerName ,count(distinct TrainID) as TotalTrain
from booking
group by PassengerName
Having count(distinct TrainID) > 1;

--- 21.Display passengers who cancelled bookings
select distinct PassengerName,Status
from booking
where status = 'cancelled';


--- 22.Count bookings based on gender
select Gender,count(*) as TotalBooking
from booking
group by gender;


--- 23.Display bookings where passenger age is above average age
select *
from booking
where age >
(select AVG(Age) from booking);


--- 24.Identify passengers who have used more than one payment mode for their bookings and display their 
--- names along with one of the payment modes used.
select B.PassengerName,group_concat(P.PaymentMode) AS PaymentMode
from Booking as B
join Payment as p
on B.BookingId = P.BookingID
group by B.PassengerName
having count(distinct P.PaymentMode) >1 ;


--- 25.Identify the date on which the highest number of bookings were made in the system.
select DateOfJourney,count(*) as TotalBooking
from booking
group by DateOfJourney
order by TotalBooking desc
limit 1;

--- 26.Show each passenger for a train along with their rank based on age (oldest → youngest).
select TrainID,PassengerName,Age,
RANK() over(Partition by TrainID order by Age) as AgeRank
from booking
order by TrainID,AgeRank desc;

--- 27.Find passengers who have both confirmed and cancelled bookings
select PassengerName
from booking
group by PassengerName
Having sum(Status = 'Confirmed') > 0 AND sum(Status = 'Cancelled') > 0;

--- 28.Train-wise Confirmed vs Cancelled booking count
select TrainID,sum(Status = 'Confirmed') as ConfirmedBooking,sum(Status = 'Cancelled') as CancelledBooking
from booking
group by TrainID
order by ConfirmedBooking,CancelledBooking desc;


--- 29.Find the most preferred seat class
select SeatClass,count(*) as TotalBooking
from booking
group by SeatClass
order by TotalBooking desc;

--- 30.Find train-wise total revenue and show only those trains whose revenue is above average.
with Trainrevenue as(
select T.TrainID,T.TrainName,sum(p.AmountPaid) as Totalrevenue
from Train as T
join booking as B
on B.TrainID = T.TrainID
join Payment as p
on B.BookingID = p.BookingID
where p.PaymentStatus = 'Paid'
group by T.TrainID,T.TrainName
)
select* 
from Trainrevenue
where Totalrevenue > (
select avg(Totalrevenue) from Trainrevenue
);



--- 31.Create a VIEW to show booking, train, and payment summary.
create VIEW Booking_Train_Payment_Summary as
select B.BookingID,B.PassengerName,T.TrainName,B.DateOfJourney,B.SeatClass,P.AmountPaid,P.PaymentMode,P.PaymentStatus
from booking as B
join train as T
on B.TrainID = T.TrainID
join payment as P
on B.BookingID = P.BookingID;

select*from Booking_Train_Payment_Summary;


--- 32.Create a stored procedure to display all bookings for a given TrainID.
DELIMITER //
CREATE PROCEDURE getBookingByTrain(IN Train_ID INT)
BEGIN
     SELECT TrainID,BookingID,PassengerName,DateOfJourney,SeatClass,Status
	from booking
	where TrainID = Train_ID;
END //

DELIMITER ;

CALL getBookingByTrain(5);
DROP PROCEDURE getBookingByTrain;


--- 33.Automatically update booking status when payment is marked as Paid.
DELIMITER //
CREATE TRIGGER AFTERPAYMENTMODE
AFTER UPDATE ON payment
FOR EACH ROW
BEGIN
IF NEW.PaymenTStatus = 'Paid' THEN
  update booking
  SET Status = 'Confirmed'
  where BookingID = NEW.BookingID ;
  END IF;
  END // 
  
  DELIMITER ;

--- 34. Find the top 5 most popular source–destination pairs based on the total number of bookings.
select FromStation,ToStation,count(*) as TotalBookings
from booking
group by FromStation,ToStation
order by TotalBookings desc
limit 5;


---- 35.Cancelled Bookings by Train
SELECT T.TrainName,COUNT(*) AS CancelledBookings
FROM Booking B
JOIN Train T ON B.TrainID = T.TrainID
WHERE B.Status='Cancelled'
GROUP BY T.TrainName;

--- 36. Passenger Count by Seat Class
SELECT SeatClass,COUNT(*) AS TotalPassengers
FROM Booking
GROUP BY SeatClass
order by TotalPassengers desc;


--- 37. Total Distance Travelled by Each Passenger
SELECT B.PassengerName,SUM(R.DistanceFromSource) AS TotalDistance
FROM Booking B
JOIN Route R 
ON B.TrainID = R.TrainID
WHERE R.StationName IN (B.ToStation, B.FromStation)
GROUP BY B.PassengerName
order by TotalDistance desc;

