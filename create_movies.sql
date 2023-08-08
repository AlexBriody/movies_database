-- Create patrons table
CREATE TABLE IF NOT EXISTS patrons (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Create movies seen table
CREATE TABLE IF NOT EXISTS movies_seen (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_date DATE
);

-- Create tickets purchased table
CREATE TABLE IF NOT EXISTS tickets_purchased (
    ticket_id SERIAL PRIMARY KEY,
    seat_number VARCHAR(10),
    purchase_date DATE,
    customer_id INTEGER REFERENCES patrons(customer_id),
    movie_id INTEGER REFERENCES movies_seen(movie_id)
);

-- Create subscription plans table
CREATE TABLE IF NOT EXISTS subscription_plans (
    plan_id SERIAL PRIMARY KEY,
    plan_type VARCHAR(20),
    cost NUMERIC(5,2),
    total_cost NUMERIC(10,2),
    customer_id INTEGER REFERENCES patrons(customer_id)
);
