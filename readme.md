# ERD and Database - Movie Theater Database Creation

### Instructions

Using lucidchart or any ERD tool and POSTGRESQL create an ERD for a movie theater (customers, tickets, concessions, movies at minimum but you can have more) afterward create the tables.

Inside of your ERD please backup the reasoning behind why you decided to use the relationships you chose. You can do so by adding text to the bottom of the ERD.

Also insert data into the 4 tables that you create.

NOTE: For an added challenge, feel free to also play around with changing/altering the database tables.

In total for this homework assignment, you should have 3 - 4 files inside of your github repo.

Once done, commit the ERD as a PDF and the SQL file to GitHub and submit the link to the assignment

### Database Relationship Reasoning

1. Customer to Ticket: One-to-Many and Customer to Ticket_Transaction: One-to-Many

   A customer may purchase more than one ticket transaction, hence, obtain more than one ticket.

2. Ticket_Transaction to Ticket: One-to-Many

   A ticket transaction may have multiple tickets assigned to it.

3. Showtime to Ticket: One-to-Many

   A showtime can accommodate multiple tickets from customers.

4. Seat to Ticket: One-to-Many

   A seat may be assigned more than once in a ticket. This is where customers are able to enjoy the movie.

5. Customer to Concession Sale: One-to-Many

   A customer may be able to purchase more than once from the concession stand.

6. Concession Sale to Cart: One-to-Many and Concession to Cart: One-to-Many

   A concession sale is allowed multiple cart items (e.g. popcorn, refillable soda, water bottle) - in this database, a cart is the type of concession item and allowed to have more than one in quantity.

7. Movie to Showtime: One-to_many and Theater to Showtime: One-to_many

   A movie can have multiple showtimes and a theater can be scheduled to have multiple showtimes. (e.g. Guardians of the Galaxy Vol. 3 showing at Theater 6 on May 3rd 12:00NN, at Theater 6 on May 3rd 3:00PM and at Theater 6 on May 3rd 6:00PM)

8. Theater to Seat: One-to-Many

   A theater can occupy multiply seat, identified by unique seat numbers.

### Files

- [Database Design](https://github.com/geanu02/wk5-dy2-sqlhw/blob/main/db_diagram.pdf)
- [Create Tables Query](https://github.com/geanu02/wk5-dy2-sqlhw/blob/main/moovie_create_tables_dbeaver.sql)
- [Insert Data Query](https://github.com/geanu02/wk5-dy2-sqlhw/blob/main/moovie_insert_data_dbeaver.sql)
- [Alter Tables Query](https://github.com/geanu02/wk5-dy2-sqlhw/blob/main/moovie_alter_tables_dbeaver.sql)
