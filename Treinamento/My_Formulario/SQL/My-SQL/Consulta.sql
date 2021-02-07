SELECT r.* , c.nome, t.documento
FROM contas_receber r
LEFT JOIN clientes c ON c.id = r.id_cliente
LEFT JOIN tipos_documentos t ON t.id = r.id_documento