CREATE TABLE part (
    part_id SERIAL PRIMARY KEY,
    part_no VARCHAR(20) UNIQUE NOT NULL,
    part_name VARCHAR(100) NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    vehicle_model VARCHAR(50),
    model_year INTEGER,
    part_condition VARCHAR(20),
    category_id INTEGER NOT NULL,

    FOREIGN KEY (category_id) REFERENCES category(category_id)
); 