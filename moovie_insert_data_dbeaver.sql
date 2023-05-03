INSERT INTO customer (
	first_name,
	last_name,
	dob,
	payment_details,
	billing_address,
	email
) VALUES (
	'Dylan',
	'Smith',
	'1993-01-01',
	'4242 4242 4242 4242',
	'1313 Mockingbird Lane',
	'dylan82-smith@codingtemple.com'
), (
	'Gian',
	'Torres',
	'1994-02-02',
	'5353 5353 5353 5353',
	'42 Wallaby Way',
	'geanu@outlook.com'
), (
	'Padme',
	'Amidala',
	'1985-08-02',
	'4141 4141 4141 4141',
	'1 Royal Way',
	'padme_amidala@aol.com'
);

SELECT * FROM customer;

INSERT INTO movie (
    release_date,
    film_title,
    synopsis,
    rating
) VALUES (
	'2023-03-16',
	'Star Wars Episode 1: The Phantom Menace',
	'Two Jedi escape a hostile blockade to find allies and come across a young boy who may bring balance to the Force, but the long dormant Sith resurface to claim their original glory.',
	'PG'
), (
	'2023-03-29',
	'Mean Girls',
	'Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.',
	'PG-13'
), (
	'2023-04-13',
	'The Wolf of Wall Street',
	'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.',
	'R-18'
);

SELECT * FROM movie;

INSERT INTO concession (
	con_name,
	con_price,
	refill
) VALUES (
	'Popcorn',
	5.99,
	True
), (
	'Fountain Soda',
	4.99,
	True
), (
	'Bottled Water',
	2.99,
	False
);

SELECT * FROM concession;

INSERT INTO theater (
	capacity,
	no_accessible_seats,
	"floor",
	theater_name
) VALUES (
	80,
	8,
	2,
	'Theater A'
), (
	60,
	4,
	3,
	'Theater B'
), (
	108,
	14,
	4,
	'Theater C'
);

SELECT * FROM theater;

INSERT INTO seat (
	theater_id,
	seat_num,
	accessibility,
	recliner
) VALUES (
	1, '1A', FALSE, TRUE
), (
	1, '1B', FALSE, TRUE
), (
	1, '1C', FALSE, TRUE
), (
	1, '2A', FALSE, TRUE
), (
	1, '2B', FALSE, TRUE
), (
	1, '2C', FALSE, TRUE
), (
	1, '3A', TRUE, TRUE
), (
	1, '3B', TRUE, TRUE
), (
	1, '3C', TRUE, TRUE
), (
	1, '4A', TRUE, FALSE
), (
	1, '4B', TRUE, FALSE
), (
	1, '4C', TRUE, FALSE
), (
	1, '5A', TRUE, FALSE
), (
	1, '5B', TRUE, FALSE
), (
	1, '5C', TRUE, FALSE
), (
	2, '1A', FALSE, TRUE
), (
	2, '1B', FALSE, TRUE
), (
	2, '1C', FALSE, TRUE
), (
	2, '2A', FALSE, TRUE
), (
	2, '2B', FALSE, TRUE
), (
	2, '2C', FALSE, TRUE
), (
	2, '3A', TRUE, TRUE
), (
	2, '3B', TRUE, TRUE
), (
	2, '3C', TRUE, TRUE
), (
	2, '4A', TRUE, FALSE
), (
	2, '4B', TRUE, FALSE
), (
	2, '4C', TRUE, FALSE
), (
	2, '5A', TRUE, FALSE
), (
	2, '5B', TRUE, FALSE
), (
	2, '5C', TRUE, FALSE
), (
	3, '1A', FALSE, TRUE
), (
	3, '1B', FALSE, TRUE
), (
	3, '1C', FALSE, TRUE
), (
	3, '2A', FALSE, TRUE
), (
	3, '2B', FALSE, TRUE
), (
	3, '2C', FALSE, TRUE
), (
	3, '3A', TRUE, TRUE
), (
	3, '3B', TRUE, TRUE
), (
	3, '3C', TRUE, TRUE
), (
	3, '4A', TRUE, FALSE
), (
	3, '4B', TRUE, FALSE
), (
	3, '4C', TRUE, FALSE
), (
	3, '5A', TRUE, FALSE
), (
	3, '5B', TRUE, FALSE
), (
	3, '5C', TRUE, FALSE
);

SELECT * FROM seat;

INSERT INTO showtime (
	movie_id,
	theater_id,
	show_date,
	show_time,
	price
) VALUES (
	1, 2, '2023-04-01', '12:30:00', 13.50
), (
	1, 2, '2023-04-01', '15:30:00', 13.50
), (
	1, 2, '2023-04-01', '18:30:00', 16.50
), (
	1, 2, '2023-04-01', '21:30:00', 16.50
), (	
	2, 3, '2023-04-01', '12:30:00', 13.50
), (
	2, 3, '2023-04-01', '15:30:00', 13.50
), (
	2, 3, '2023-04-01', '18:30:00', 16.50
), (
	2, 3, '2023-04-01', '21:30:00', 16.50
), (
	3, 1, '2023-04-01', '12:30:00', 13.50
), (
	3, 1, '2023-04-01', '15:30:00', 13.50
), (
	3, 1, '2023-04-01', '18:30:00', 16.50
), (
	3, 1, '2023-04-01', '21:30:00', 16.50
), (	
	2, 3, '2023-04-02', '12:30:00', 13.50
), (
	2, 3, '2023-04-02', '15:30:00', 13.50
), (
	2, 3, '2023-04-02', '18:30:00', 16.50
), (
	2, 3, '2023-04-02', '21:30:00', 16.50
);

SELECT * FROM showtime;

INSERT INTO ticket_transaction (
	cust_id,
	transaction_date,
	payment_method,
	paid_amount
) VALUES (
	3, '2023-03-25', 'Credit Card',	16.50
), (
	2, '2023-03-27', 'Credit Card',	13.50
), (
	1, '2023-03-30', 'Credit Card',	16.50
);

SELECT * FROM ticket_transaction;

INSERT INTO ticket (
	cust_id,
	transaction_id,
	showtime_id,
	seat_id,
	purchase_date,
	expiration_date,
	ticket_value
) VALUES (
	3, 1, 3, 46, '2023-03-25', '2023-09-24', 16.50
), (
	2, 2, 8, 56, '2023-03-27', '2023-09-26', 13.50
), (
	1, 3, 15, 84, '2023-03-30', '2023-10-01', 16.50
);

SELECT * FROM ticket;

INSERT INTO cart (
	con_id,
	quantity,
	cart_date
) VALUES (
	3, 2, '04-01-2023'
), (
	1, 1, '04-01-2023'
), (
	2, 3, '04-02-2023'
);

SELECT * FROM cart;

INSERT INTO concession_sale (
	cust_id,
	cart_id,
	sale_date,
	payment_method,
	paid_amount
) VALUES (
	2, 1, '04-01-2023', 'Credit Card', 11.00
), (
	1, 2, '04-02-2023', 'Credit Card', 5.99 
), (
	3, 3, '04-01-2023', 'Credit Card', 6.00
);

SELECT * FROM concession_sale;