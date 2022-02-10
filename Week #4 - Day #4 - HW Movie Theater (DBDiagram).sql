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
