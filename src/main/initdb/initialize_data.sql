INSERT INTO Users (username, password, email, first_name, last_name) VALUES
('Ahsan_Ali', 'lemon123', 'ahsanali@gmail.com', 'Ahsan', 'Ali'),
('Nishad_Arumugam', 'orange589', 'nishadarumugam@gmail.com', 'Nishad', 'arumugam'),
('Dalen_Martin', 'yellow125', 'dalenmartin@gmail.com', 'Dalen', 'Martin'),
('Dana_White', 'ufc400', 'danawhite@gmail.com', 'Dana', 'White'),
('Brock_Purdy', 'niners49', 'brockpurdy@gmail.com', 'Brock', 'Purdy'),
('Virat_Kholi', 'ICC2024', 'viratkholi@gmail.com', 'Virat', 'Kholi'),
('Brad_Pitt', 'actor101', 'bradpitt@gmail.com', 'Brad', 'Pit'),
('The_Weekend', 'songs123', 'theweekend@gmail.com', 'Abel', 'Tesfaye'),
('Cristiano_Ronaldo', 'worldcup2025', 'cristianoronaldo@gmail.com', 'Cristiano', 'Ronaldo'),
('Babar_Azam', 'zalmi2025', 'babarazam@gmail.com', 'Babar', 'Azam'),
('Barack_Obama', 'potus2016', 'barackobama@gmail.com', 'Barack', 'Obama'),
('Muhammad_Ali', 'goatboxer', 'muhammadali@gmail.com', 'Muhammad', 'Ali'),
('Lebron_James', 'nbafinals2016', 'lebronjames@gmail.com', 'Lebron', 'James'),
('Mike_Tyson', 'tiger11', 'miketyson@gmail.com', 'Mike', 'Tyson'),
('Stephen_Curry', 'warriors30', 'stephencurry@gmail.com', 'Stephen', 'Curry');

-- Insert Accounts
INSERT INTO Accounts (user_id, account_name) VALUES
(1, 'Checking'),
(1, 'Savings'),
(2, 'Business'),
(3, 'Investment'),
(4, 'Vacation Fund'),
(5, 'Joint Account'),
(6, 'Crypto Wallet'),
(7, 'Emergency Fund'),
(8, 'College Savings'),
(9, 'Paypal'),
(10, 'Cash'),
(11, 'Chase Checking'),
(12, 'BOA Savings'),
(13, 'Venmo'),
(14, 'HSA Account'),
(15, 'Goldman Sachs');

-- Insert Categories
INSERT INTO Categories (user_id, name) VALUES
(1, 'Groceries'),
(1, 'Utilities'),
(2, 'Salary'),
(3, 'Investments'),
(4, 'Travel'),
(5, 'Dining Out'),
(6, 'Healthcare'),
(7, 'Education'),
(8, 'Subscriptions'),
(9, 'Entertainment'),
(10, 'Phone Bill'),
(11, 'Gym'),
(12, 'Insurance'),
(13, 'Transportation'),
(14, 'Gifts'),
(15, 'Pet Supplies');

-- Insert Transactions
INSERT INTO Transactions (user_id, account_id, category_id, transaction_name, amount, type, description, transaction_date) VALUES
(1, 1, 1, 'transcation1', 150.0, 'expense', 'Grocery shopping at Target', '2024-04-01'),
(1, 2, 2, 'transcation2', 80.0, 'expense', 'Electric Bill', '2024-04-03'),
(2, 3, 3, 'transcation3', 4000.0, 'income', 'Monthly Salary', '2024-04-05'),
(3, 4, 4, 'transcation4', 500.0, 'income', 'Stock Shares', '2024-04-06'),
(4, 5, 5, 'transcation5', 250.0, 'expense', 'Hotel Booking', '2024-04-08'),
(5, 6, 6, 'transcation6', 20.0, 'expense', 'Lunch at Halal Shack', '2024-04-09'),
(6, 7, 7, 'transcation7', 150.0, 'expense', 'Doctor appointment', '2024-04-11'),
(7, 8, 8, 'transcation8', 450.0, 'expense', 'Course Enrollment Fee', '2024-04-12'),
(8, 9, 9,'transcation9', 30.0, 'expense', 'Apple Music Subscription', '2024-04-14'),
(9, 10, 10, 'transcation10', 45.0, 'expense', 'Phone Bill', '2024-04-15'),
(10, 11, 11, 'transcation11', 30.0, 'expense', 'Monthly Gym Membership', '2024-04-17'),
(11, 12, 12, 'transcation12', 150.0, 'expense', 'Health Insurance', '2024-04-18'),
(12, 13, 13, 'transcation13', 90.0, 'expense', 'Uber Rides', '2024-04-20'),
(13, 14, 14, 'transcation14', 150.0, 'expense', 'DoorDash', '2024-04-21'),
(14, 15, 15, 'transcation15', 250.0, 'expense', 'Birthday Gift', '2024-04-23'),
(15, 15, 3, 'transcation16', 3000.0, 'income', 'Freelance project', '2024-04-25');