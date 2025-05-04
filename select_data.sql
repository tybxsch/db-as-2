-- ------------------------------------------------------------------
-- Testes de permissão para o usuário 'sommelier_local'
-- ------------------------------------------------------------------

-- Inválida: o usuário NÃO tem permissão para acessar esta coluna
SELECT winery_email FROM wineries;

-- Válida: o usuário pode acessar essas colunas
SELECT wine_name, wine_year FROM wines;
SELECT winery_id, winery_name FROM wineries;

-- ------------------------------------------------------------------
-- Consultas administrativas - executadas como root
-- ------------------------------------------------------------------

-- Lista todos os vinhos com nome, tipo, ano, vinícola e região
SELECT
  w.wine_name,
  w.wine_type,
  w.wine_year,
  wi.winery_name,
  r.region_name
FROM wines w
JOIN wineries wi ON w.winery_id = wi.winery_id
JOIN regions r ON wi.region_id = r.region_id;

-- Agrupa os vinhos por tipo e mostra a quantidade de cada um
SELECT
  wine_type,
  COUNT(*) AS total
FROM wines
GROUP BY wine_type;

-- Lista todas as regiões com suas vinícolas, inclusive regiões sem vinícolas
SELECT
  r.region_name,
  wi.winery_name
FROM regions r
LEFT JOIN wineries wi ON r.region_id = wi.region_id
ORDER BY r.region_name;

-- Mostra o número de vinhos produzidos por cada vinícola
SELECT
  wi.winery_name,
  COUNT(w.wine_id) AS wine_count
FROM wineries wi
LEFT JOIN wines w ON wi.winery_id = w.winery_id
GROUP BY wi.winery_id
ORDER BY wine_count DESC;

-- Lista os vinhos produzidos após o ano de 2022
SELECT wine_name, wine_year
FROM wines
WHERE wine_year > 2022
ORDER BY wine_year DESC;
