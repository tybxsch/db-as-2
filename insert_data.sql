-- Tabela de regions
INSERT INTO regions (region_name, region_description) VALUES
('Vale dos Vinhedos', 'Main wine region in Rio Grande do Sul'),
('Serra Catarinense', 'Cool climate, great for fine wines'),
('Campanha Gaúcha', 'Flatlands, full-bodied wines'),
('São Francisco Valley', 'Year-round grape production'),
('Serra Gaúcha', 'Traditional and historical region'),
('Campos de Cima', 'High altitude, elegant wines'),
('Chapada Diamantina', 'Emerging region in Bahia'),
('Mantiqueira de Minas', 'Mountain terroir, mineral-rich soil'),
('Planalto Catarinense', 'Cold weather and slow ripening'),
('Pampa Gaúcho', 'Extensive plains, good for large scale');

-- Tabela de wineries
INSERT INTO wineries (winery_name, winery_description, winery_phone, winery_email, region_id) VALUES
('Aurora Winery', 'Traditional cooperative from Serra Gaúcha', '5432100011', 'aurora@wines.com', 5),
('Casa Valduga', 'Sparkling wine pioneer in Brazil', '5432100022', 'valduga@wines.com', 1),
('Miolo Wine Group', 'One of the largest Brazilian producers', '5432100033', 'miolo@wines.com', 3),
('Villa Francioni', 'Boutique winery in Santa Catarina', '4832100044', 'vf@wines.com', 2),
('Botticelli', 'Sustainable production in São Francisco Valley', '7432100055', 'botticelli@wines.com', 4),
('Campos Winery', 'Small family-owned winery', '4832100066', 'campos@wines.com', 6),
('Diamante Wines', 'Innovative and artisanal', '7532100077', 'diamante@wines.com', 7),
('Mantiqueira Cellars', 'Refined wines from mountain terroir', '3532100088', 'mantiqueira@wines.com', 8),
('Catarinense Wines', 'Cold climate specialties', '4832100099', 'catarina@wines.com', 9),
('Pampa Vinhos', 'Wines from the southern plains', '5532100100', 'pampa@wines.com', 10);

-- Tabela de wines
INSERT INTO wines (wine_id, wine_name, wine_type, wine_year, wine_description, winery_id) VALUES
(UUID(), 'Aurora Reserva', 'Red', 2020, 'Full-bodied red with oak notes', 1),
(UUID(), 'Valduga Brut', 'Sparkling', 2022, 'Award-winning sparkling wine', 2),
(UUID(), 'Miolo Lote 43', 'Red', 2021, 'Cabernet Sauvignon blend', 3),
(UUID(), 'Villa Francioni Rosé', 'Rosé', 2023, 'Fresh and fruity', 4),
(UUID(), 'Botticelli Premium', 'White', 2020, 'Aromatic, ideal for light dishes', 5),
(UUID(), 'Campos Tinto Fino', 'Red', 2019, 'Velvety and fruit-forward', 6),
(UUID(), 'Diamante Syrah', 'Red', 2021, 'Spicy and complex Syrah', 7),
(UUID(), 'Mantiqueira Chardonnay', 'White', 2022, 'Mineral and crisp profile', 8),
(UUID(), 'Catarinense Pinot Noir', 'Red', 2023, 'Elegant and light-bodied', 9),
(UUID(), 'Pampa Merlot', 'Red', 2018, 'Mature and smooth Merlot', 10);
