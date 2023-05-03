CREATE TABLE "customer"(
    "cust_id" SERIAL PRIMARY KEY,
    "last_name" VARCHAR(75),
    "first_name" VARCHAR(75),
    "dob" DATE,
    "payment_details" VARCHAR(255),
    "billing_address" BIGINT
);

CREATE TABLE "movie"(
    "movie_id" SERIAL PRIMARY KEY,
    "release_date" DATE,
    "film_title" VARCHAR(255),
    "synopsis" VARCHAR(1024),
    "rating" VARCHAR(15)
);

CREATE TABLE "theater"(
    "theater_id" SERIAL PRIMARY KEY,
    "capacity" SMALLINT,
    "no_accessible_seats" SMALLINT,
    "floor" SMALLINT,
    "theater_name" VARCHAR(25)
);

CREATE TABLE "seat"(
    "seat_id" SERIAL PRIMARY KEY,
    "theater_id" INT,
    "seat_num" VARCHAR(15),
    "accessibility" BOOLEAN,
    "recliner" BOOLEAN,
    FOREIGN KEY("theater_id") REFERENCES "theater"("theater_id")
);

CREATE TABLE "showtime"(
    "showtime_id" SERIAL PRIMARY KEY,
    "movie_id" INT,
    "theater_id" SMALLINT,
    "show_date" DATE,
    "show_time" TIMESTAMP(0) WITHOUT TIME ZONE,
    "price" DECIMAL(8, 2),
    FOREIGN KEY("movie_id") REFERENCES "movie"("movie_id"),
    FOREIGN KEY("theater_id") REFERENCES "theater"("theater_id")
);

CREATE TABLE "ticket_transaction"(
    "transaction_id" SERIAL PRIMARY KEY,
    "cust_id" INT,
    "transaction_date" DATE,
    "payment_method" VARCHAR(150),
    "paid_amount" DECIMAL(8, 2),
    FOREIGN KEY("cust_id") REFERENCES "customer"("cust_id")
);

CREATE TABLE "ticket"(
    "ticket_id" SERIAL PRIMARY KEY,
    "cust_id" INT,
    "transaction_id" INT,
    "showtime_id" INT,
    "seat_id" INT,
    "purchase_date" DATE,
    "expiration_date" DATE,
    "ticket_value" DECIMAL(8, 2),
    FOREIGN KEY("cust_id") REFERENCES "customer"("cust_id"),
    FOREIGN KEY("transaction_id") REFERENCES "ticket_transaction"("transaction_id"),
    FOREIGN KEY("showtime_id") REFERENCES "showtime"("showtime_id"),
    FOREIGN KEY("seat_id") REFERENCES "seat"("seat_id")
);


CREATE TABLE "concession"(
    "con_id" SERIAL PRIMARY KEY,
    "con_name" VARCHAR(75),
    "con_price" DECIMAL(8, 2),
    "refill" BOOLEAN
);

CREATE TABLE "cart"(
    "cart_id" SERIAL PRIMARY KEY,
    "con_id" BIGINT,
    "quantity" SMALLINT,
    "cart_date" DATE,
    FOREIGN KEY("con_id") REFERENCES "concession"("con_id")
);

CREATE TABLE "concession_sale"(
    "sale_id" SERIAL PRIMARY KEY,
    "cust_id" INT,
    "cart_id" INT,
    "sale_date" DATE,
    "payment_method" VARCHAR(150),
    "paid_amount" DECIMAL(8, 2),
    FOREIGN KEY("cust_id") REFERENCES "customer"("cust_id"),
    FOREIGN KEY("cart_id") REFERENCES "cart"("cart_id")
);
