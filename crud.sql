-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)

INSERT INTO clientes
          (nome, lealdade)
VALUES ('Georgia', 0);


-- 2)

INSERT INTO pedidos 
            (status, cliente_id)
VALUES ('Recebido','cc8876ec-a416-4db7-9468-41a6c52e9ecd');


-- 3)
INSERT INTO produtos_pedidos
          (pedido_id, produto_id)
VALUES 
('494736b3-c21c-4647-bb66-697af214002d', 'cfe334b9-0a5e-442b-8d33-17c221f5a138'),
('494736b3-c21c-4647-bb66-697af214002d', 'b67668e9-ef19-456e-b892-3d1f860c207b'),
('494736b3-c21c-4647-bb66-697af214002d', '4203ab7c-f327-42ac-b262-dba199aff0ec'),
('494736b3-c21c-4647-bb66-697af214002d', '8d50eebf-ff62-4254-8f45-3b9b5ec44753'),
('494736b3-c21c-4647-bb66-697af214002d', '8d50eebf-ff62-4254-8f45-3b9b5ec44753');


-- Leitura

-- 1)

SELECT cl.id, cl.nome, cl.lealdade, pe.status, pe.id, p.id, p.nome , p.tipo, p.preço , p.pts_de_lealdade  FROM produtos_pedidos pp 
JOIN  produtos p ON pp.produto_id = p.id
JOIN pedidos pe ON pp.pedido_id  = pe.id
JOIN clientes cl ON cl.id = pe.cliente_id
WHERE cl.nome = 'Georgia';

-- Atualização

-- 1)

UPDATE clientes
SET lealdade = 48
WHERE nome = 'Georgia';

-- Deleção

-- 1)

DELETE FROM endereços
WHERE cliente_id = 'ac6c55c3-3824-4ab2-8dad-77e3307b9128';

DELETE FROM pedidos
WHERE cliente_id = 'ac6c55c3-3824-4ab2-8dad-77e3307b9128';

DELETE FROM produtos_pedidos
WHERE pedido_id = '0f85efaf-a311-4eb6-92fc-66e83c6909da'

DELETE FROM clientes 
WHERE nome = 'Marcelo';







