-- Cria o banco de dados e seleciona
CREATE DATABASE IF NOT EXISTS wine_store;
USE wine_store;

-- Tabela de regiões
CREATE TABLE regions (
  region_id          INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
  region_name        VARCHAR(100)  NOT NULL,
  region_description TEXT
);

-- Tabela de vinícolas
CREATE TABLE wineries (
  winery_id          INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
  winery_name        VARCHAR(100)  NOT NULL,
  winery_description TEXT,
  winery_phone       VARCHAR(15),
  winery_email       VARCHAR(45),
  region_id          INT           NOT NULL,
  FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Tabela de vinhos
CREATE TABLE wines (
  wine_id           CHAR(36)      NOT NULL PRIMARY KEY,
  wine_name         VARCHAR(50)   NOT NULL,
  wine_type         VARCHAR(30)   NOT NULL,
  wine_year         INT           NOT NULL,
  wine_description  TEXT,
  winery_id         INT           NOT NULL,
  FOREIGN KEY (winery_id) REFERENCES wineries(winery_id)
);

-- Trigger para gerar UUID automaticamente em wine_id
DELIMITER $$
CREATE TRIGGER before_wines_insert
BEFORE INSERT ON wines
FOR EACH ROW
BEGIN
  IF NEW.wine_id IS NULL OR NEW.wine_id = '' THEN
    SET NEW.wine_id = UUID();
  END IF;
END$$
DELIMITER ;

-- Procedure para criar uma vinícola com região, se não existir
DELIMITER $$
CREATE PROCEDURE create_winery_with_region(
  IN p_winery_name        VARCHAR(100),
  IN p_winery_description TEXT,
  IN p_winery_phone       VARCHAR(15),
  IN p_winery_email       VARCHAR(45),
  IN p_region_name        VARCHAR(100),
  IN p_region_description TEXT
)
BEGIN
  DECLARE existing_region_id INT;
  DECLARE new_region_id INT;
  DECLARE new_winery_id INT;

  -- Verifica se região já existe
  SELECT region_id INTO existing_region_id
  FROM regions
  WHERE region_name = p_region_name
  LIMIT 1;

  START TRANSACTION;

  -- Insere região, se não existir
  IF existing_region_id IS NULL THEN
    INSERT INTO regions (region_name, region_description)
    VALUES (p_region_name, p_region_description);
    SET new_region_id = LAST_INSERT_ID();
  ELSE
    SET new_region_id = existing_region_id;
  END IF;

  -- Insere vinícola
  INSERT INTO wineries (
    winery_name, winery_description, winery_phone, winery_email, region_id
  ) VALUES (
    p_winery_name, p_winery_description, p_winery_phone, p_winery_email, new_region_id
  );

  COMMIT;
END$$
DELIMITER ;
