-- Criação do usuário com nome e senha em português
CREATE USER 'sommelier_local'@'localhost' IDENTIFIED BY 'senha123';

-- Permite SELECT completo na tabela de vinhos
GRANT SELECT ON wine_store.wines TO 'sommelier_local'@'localhost';

-- Permite SELECT apenas nos campos winery_id e winery_name da tabela de vinícolas
GRANT SELECT (winery_id, winery_name) ON wine_store.wineries TO 'sommelier_local'@'localhost';

-- Limita o usuário a 40 consultas por hora
ALTER USER 'sommelier_local'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;