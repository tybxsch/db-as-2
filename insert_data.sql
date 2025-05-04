-- Insere regiões e vinícolas utilizando a procedure create_winery_with_region
CALL create_winery_with_region(
  'Aurora Winery',
  'Cooperativa tradicional da Serra Gaúcha',
  '5432100011',
  'aurora@wines.com',
  'Serra Gaúcha',
  'Região tradicional e histórica do RS'
);

CALL create_winery_with_region(
  'Casa Valduga',
  'Pioneira em espumantes no Brasil',
  '5432100022',
  'valduga@wines.com',
  'Vale dos Vinhedos',
  'Principal região vinícola do Rio Grande do Sul'
);

CALL create_winery_with_region(
  'Miolo Wine Group',
  'Uma das maiores produtoras brasileiras',
  '5432100033',
  'miolo@wines.com',
  'Campanha Gaúcha',
  'Região de solos planos e vinhos encorpados'
);

CALL create_winery_with_region(
  'Villa Francioni',
  'Vinícola boutique da Serra Catarinense',
  '4832100044',
  'vf@wines.com',
  'Serra Catarinense',
  'Clima frio, ótimo para vinhos finos'
);

CALL create_winery_with_region(
  'Botticelli',
  'Produção sustentável no Vale do São Francisco',
  '7432100055',
  'botticelli@wines.com',
  'São Francisco Valley',
  'Produção de uvas durante o ano inteiro'
);

CALL create_winery_with_region(
  'Campos Winery',
  'Vinícola familiar de pequeno porte',
  '4832100066',
  'campos@wines.com',
  'Campos de Cima',
  'Região de altitude elevada e vinhos elegantes'
);

CALL create_winery_with_region(
  'Diamante Wines',
  'Vinícola artesanal e inovadora',
  '7532100077',
  'diamante@wines.com',
  'Chapada Diamantina',
  'Região emergente na Bahia'
);

CALL create_winery_with_region(
  'Mantiqueira Cellars',
  'Vinhos refinados da serra de Minas',
  '3532100088',
  'mantiqueira@wines.com',
  'Mantiqueira de Minas',
  'Terroir montanhoso com solo rico em minerais'
);

CALL create_winery_with_region(
  'Catarinense Wines',
  'Especialidade em clima frio',
  '4832100099',
  'catarina@wines.com',
  'Planalto Catarinense',
  'Clima frio e maturação lenta das uvas'
);

CALL create_winery_with_region(
  'Pampa Vinhos',
  'Vinhos das planícies do sul',
  '5532100100',
  'pampa@wines.com',
  'Pampa Gaúcho',
  'Região de grande extensão e produção em escala'
);

-- Inserção dos vinhos (UUID gerado automaticamente pelo trigger)
INSERT INTO wines (wine_id, wine_name, wine_type, wine_year, wine_description, winery_id) VALUES
(UUID(), 'Aurora Reserva', 'Tinto', 2020, 'Vinho encorpado com notas de carvalho', 1),
(UUID(), 'Valduga Brut', 'Espumante', 2022, 'Espumante premiado com acidez equilibrada', 2),
(UUID(), 'Miolo Lote 43', 'Tinto', 2021, 'Blend sofisticado com Cabernet Sauvignon', 3),
(UUID(), 'Villa Francioni Rosé', 'Rosé', 2023, 'Refrescante e frutado para dias quentes', 4),
(UUID(), 'Botticelli Premium', 'Branco', 2020, 'Aromático, ideal para pratos leves', 5),
(UUID(), 'Campos Tinto Fino', 'Tinto', 2019, 'Aveludado, com notas de frutas maduras', 6),
(UUID(), 'Diamante Syrah', 'Tinto', 2021, 'Syrah com especiarias e corpo médio', 7),
(UUID(), 'Mantiqueira Chardonnay', 'Branco', 2022, 'Perfil mineral e acidez vibrante', 8),
(UUID(), 'Catarinense Pinot Noir', 'Tinto', 2023, 'Elegante, leve e persistente', 9),
(UUID(), 'Pampa Merlot', 'Tinto', 2018, 'Merlot amadurecido, macio e equilibrado', 10);
