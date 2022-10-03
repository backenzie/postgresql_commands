-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT * FROM produtos p
JOIN  produtos_pedidos pp ON p.id = pp.produto_id;
-- 2)
SELECT pedido_id FROM produtos_pedidos pp 
JOIN  produtos p ON pp.produto_id = p.id
WHERE p.nome = 'Fritas';
-- 3)
SELECT cl.nome AS gostam_de_fritas  FROM produtos_pedidos pp 
JOIN  produtos p ON pp.produto_id = p.id
JOIN pedidos pe ON pp.pedido_id  = pe.id
JOIN clientes cl ON cl.id = pe.cliente_id
WHERE p.nome = 'Fritas';
-- 4)
SELECT sum(p.preço) FROM produtos_pedidos pp 
JOIN  produtos p ON pp.produto_id = p.id
JOIN pedidos pe ON pp.pedido_id  = pe.id
JOIN clientes cl ON cl.id = pe.cliente_id
WHERE cl.nome = 'Laura';
-- 5)
SELECT p.nome, count(produto_id)  FROM produtos p 
JOIN  produtos_pedidos pp ON pp.produto_id = p.id
GROUP BY p.nome
ORDER BY p.nome;



