Create TABLE if NOT EXISTS client(
	id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50),
	email VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL
);

-- CREATE TYPE tipo_categoria AS ENUM ('Receita', 'Despesa');

CREATE TABLE if NOT EXISTS category(
	id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50),
	type tipo_categoria,
	client_id int NOT NULL,

	CONSTRAINT fk_category_client
		FOREIGN KEY (client_id)
		REFERENCES client (id)
		ON DELETE CASCADE
);

CREATE TABLE if not EXISTS transact(
	id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	description VARCHAR(100),
	value DECIMAL(12,2),
	type tipo_categoria,
	transaction_date TIMESTAMP,
	category_id int NOT NULL,
	client_id int NOT NULL,

	CONSTRAINT fk_transaction_client
		FOREIGN KEY (client_id)
		REFERENCES client (id)
		ON DELETE CASCADE,

	CONSTRAINT fk_transaction_category
		FOREIGN KEY (category_id)
		REFERENCES category (id)
		ON DELETE CASCADE
);