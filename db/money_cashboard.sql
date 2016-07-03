DROP TABLE transactions;
DROP TABLE merchants;
DROP TABLE tags;


CREATE TABLE tags(
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE merchants(
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE transactions(
  id serial4 PRIMARY KEY,
  merchant_id int4 references merchants(id) ON DELETE CASCADE,
  tag_id int4 references tags(id) ON DELETE CASCADE,
  amount int4,
  transaction_date varchar(255),
  description varchar(255),
  type varchar(255)
);
