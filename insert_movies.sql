-- Insert data into patrons table
INSERT INTO patrons (customer_id, first_name, last_name, address, phone, email)
VALUES
    (45, 'Michael', 'Rabinowitz', '789 Oak Avenue', '516-123-4567', 'michael.johnson@fakeemail.com'),
    (56, 'Emily', 'Williams', '567 Maple Drive', '973-567-8901', 'emily.williams@fakeemail.com'),
    (34, 'Ahmed', 'Abdullah', '345 Cedar Place', '212-123-4568', 'ahmed.abdullah@fakeemail.com'),
    (12, 'Sakura', 'Tanaka', '901 Pine Lane', '856-567-8902', 'sakura.tanaka@fakeemail.com'),
    (28, 'Ravi', 'Kumar', '234 Birch Street', '631-123-4569', 'ravi.kumar@fakeemail.com');

-- Insert data into movies seen table
INSERT INTO movies_seen (movie_id, title, genre, release_date)
VALUES
    (745, 'The Way of Water', 'Sci-Fi Fantasy', '2023-07-15'),
    (646, 'Mission Impossible - Dead Reckoning', 'Action', '2023-08-20'),
    (425, 'Triangle of Sadness', 'Comedy', '2023-06-10'),
    (988, 'Annihilation', 'Sci-Fi', '2023-07-30'),
    (644, 'Oppenheimer', 'Drama', '2023-08-05');

-- Insert data into tickets purchased table
INSERT INTO tickets_purchased (ticket_id, seat_number, purchase_date, customer_id, movie_id)
VALUES
    (4252, 'B03', '2023-07-17', 12, 646),
    (2653, 'A08', '2023-08-22', 34, 988),
    (3265, 'C12', '2023-06-12', 56, 425),
    (4121, 'D05', '2023-07-31', 45, 745),
    (7362, 'E10', '2023-08-08', 28, 644);

-- Insert data into subscription plans table
INSERT INTO subscription_plans (plan_id, plan_type, cost, total_cost, customer_id)
VALUES
    (27055, 'basic', 12.00, 60.00, 56),
    (77452, 'premium', 60.00, 120.00, 45),
    (35968, 'basic', 12.00, 24.00, 34),
    (15584, 'pro', 80.00, 160.00, 28),
    (28536, 'standard', 25.00, 75.00, 12);
