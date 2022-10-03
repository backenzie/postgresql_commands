CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS produtos(
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	nome VARCHAR(100) UNIQUE NOT NULL,
	tipo VARCHAR(30) NOT NULL,
	preço FLOAT(8) NOT NULL,
	pts_de_lealdade INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS clientes(
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	nome VARCHAR(50) NOT NULL,
	lealdade INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS endereços(
	cep VARCHAR(9) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	numero INTEGER NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	complemento VARCHAR(100),
	cliente_id UUID NOT NULL,
	FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
CREATE TABLE IF NOT EXISTS pedidos(
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	status VARCHAR(50) NOT NULL,
	cliente_id UUID NOT NULL,
	FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
CREATE TABLE IF NOT EXISTS produtos_pedidos(
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	pedido_id UUID NOT NULL,
	FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
	produto_id UUID NOT NULL,
	FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


