SELECT c.*, cid.cidade, cid.uf
FROM clientes c
INNER JOIN cidades cid ON cid.id = c.id_cidade