CREATE TABLE "tickets" (
  "id" int PRIMARY KEY,
  "amount" float4,
  "customer_id" int,
  "movie_id" int
);

CREATE TABLE "customer" (
  "id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255),
  "ticket_id" int
);

CREATE TABLE "concessions" (
  "id" int PRIMARY KEY,
  "food_cost" int,
  "food_name" varchar(255),
  "consume_time" int
);

CREATE TABLE "movies" (
  "id" int PRIMARY KEY,
  "movie_name" varchar(255),
  "movie_length" int
);

ALTER TABLE "customer" ADD FOREIGN KEY ("ticket_id") REFERENCES "tickets" ("id");

ALTER TABLE "tickets" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

ALTER TABLE "concessions" ADD FOREIGN KEY ("id") REFERENCES "customer" ("id");





insert into tickets (id , amount , customer_id , movie_id)
values (1 , 24 , 23 , 2674534 ),
       (2 , 13 , 345 , 867 ),
		 (3 , 6 , 87 , 4567537 ),
		 (4 , 45 , 5 , 732 ),
		 (5 , 23 , 4526 , 876562 ),
		 (6 , 31 , 24 , 45 ),
		 (7 , 21 , 1 , 41 ),
		 (8 , 17 , 7523 , 3754 ),
		 (9 , 19 , 12 , 789213 ),
		 (10 , 11 , 89 , 174186 );
		
select *
from tickets

insert into customer (id , first_name , last_name , email, ticket_id)
values (23 , 'Harun' , 'Stubbs' , 'HarunS@gmail.com' , 1 ),
       (345 , 'Colette' , 'Tang' , 'ColetteT@gmail.com' , 2 ),
		 (87 , 'Lochlan' , 'Finney' , 'LochlanF@gmail.com' , 3 ),
		 (5 , 'Destiny' , 'Valenzuela' , 'DestinyV@gmail.com' , 4 ),
		 (4526 , 'Emma' , 'Poole' , 'EmmaP@gmail.com' , 5 ),
		 (24 , 'Skylar' , 'Novak' , 'SkylarN@gmail.com' , 6 ),
		 (1 , 'Malaikah' , 'Baldwin' , 'MalaikahB@gmail.com' , 7),
		 (7523 , 'Yuvaan' , 'Rivers' , 'YuvaanR@gmail.com' , 8),
		 (12 , 'Kelise' , 'Ball' , 'KeliseB@gmail.com' , 9 ),
		 (89 , 'Yusuf' , 'Davenport' , 'YusufD@gmail.com' , 10 );
		
select *
from customer

insert into concessions 	(id , food_cost , food_name , consume_time)
values (23 , 11  , 'Egg and tuna fusilli' , 15 ),
       (345 , 16 , 'Fennel and padron salad' , 23 ),
		 (87 , 13 , 'Garlic oil and grapefruit salad' , 28 ),
		 (5 , 67 , 'Meat and butterbean stew' , 37 ),
		 (4526 , 9 , 'Turkey and cheese bagel' , 9 ),
		 (24 , 21 , 'Harissa and napolitana salad' , 13 ),
		 (1 , 19 , 'Chickpea and peppercorn fusilli' , 21 ),
		 (7523 , 42 , 'Coriander and cardamom dumplings' , 17 ),
		 (12 , 8 , 'Tomato and banana panini' , 7 ),
		 (89 , 14 , 'Aubergine and kiwi fruit dip' , 3 );
		
select *
from concessions

insert into movies 	(id , movie_name , movie_length)
values (2674534 , 'The Last Samurai' , 130 ),
       (867 , 'The Truman Show' , 145 ),
		 (4567537 , 'Constantine' , 93 ),
		 (732 , 'The Day After Tomorrow' , 112 ),
		 (876562 , 'Gladiator' , 180 ),
		 (45 , 'Captain America' , 171 ),
		 (41 , 'Avatar' , 103 ),
		 (3754 , 'Deadpool 2' , 75 ),
		 (789213 , 'Soul' , 137 ),
		 (174186 , 'The Lord of The Rings' , 199 );

select *
from movies
