USE tifosi;

-- ÉTAPE A : Les marques
INSERT INTO marque (id_marque, nom_marque) VALUES 
(1, 'Coca-cola'), 
(2, 'Cristaline'), 
(3, 'Monster'), 
(4, 'Pepsico');

-- ÉTAPE B : Les ingrédients
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES 
(1, 'Ail'), (2, 'Ananas'), (3, 'Artichaut'), (4, 'Bacon'), (5, 'Base tomate'),
(6, 'Base crème'), (7, 'Champignon'), (8, 'Chèvre'), (9, 'Cresson'), (10, 'Emmental'), 
(11, 'Gorgonzola'), (12, 'Jambon Cuit'), (13, 'Jambon fumé'), (14, 'Oeuf'), (15, 'Oignon'), 
(16, 'Olive noirte'), (17, 'Olive verte'), (18, 'Parmesan'), (19, 'Piment'), (20, 'Poivre'),
(21, 'Pomme de Terre'), (22, 'Raclette'), (23, 'Salami'), (24, 'Tomate cerise');

-- ÉTAPE C : Les boissons (id_marque doit correspondre à la table marque ci-dessus)
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES 
(1, 'Coca-cola zéro', 1),     
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),          
(4, 'Fanta orange', 1),
(5, 'Capri Sun', 1),              
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zero', 4), 
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 3);

-- ÉTAPE D : Les focaccias
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix_focaccia) VALUES 
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90), 
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

-- ÉTAPE E : Les relations (comprend)

INSERT INTO comprend (id_focaccia, id_ingredient) VALUES 
-- 1. Mozaccia (Base tomate, Mozzarella, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(1, 5), (1, 22), (1, 9), (1, 15), (1, 14), (1, 1), (1, 3), (1, 7), (1, 18),

-- 2. Gorgonzollaccia (Base tomate, Gorgonzola, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(2, 5), (2, 11), (2, 9), (2, 15), (2, 14), (2, 1), (2, 3), (2, 7), (2, 18),

-- 3. Raclaccia (Base tomate, Raclette, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(3, 5), (3, 20), (3, 9), (3, 15), (3, 14), (3, 1), (3, 3), (3, 7), (3, 18),

-- 4. Emmentalaccia (Base tomate, Emmental, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(4, 5), (4, 10), (4, 9), (4, 15), (4, 14), (4, 1), (4, 3), (4, 7), (4, 18),

-- 5. Tradizione (Base tomate, Mozzarella, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(5, 5), (5, 22), (5, 9), (5, 15), (5, 14), (5, 1), (5, 3), (5, 7), (5, 18),

-- 6. Hawaienne (Base tomate, Mozzarella, Jambon cuit, Ananas, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(6, 5), (6, 22), (6, 12), (6, 2), (6, 9), (6, 15), (6, 14), (6, 1), (6, 3), (6, 7), (6, 18),

-- 7. Américaine (Base tomate, Mozzarella, Bacon, Pomme de terre, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(7, 5), (7, 22), (7, 4), (7, 21), (7, 9), (7, 15), (7, 14), (7, 1), (7, 3), (7, 7), (7, 18),

-- 8. Paysanne (Base tomate, Mozzarella, Chèvre, Jambon cru, Pomme de terre, Cresson, Olives vertes, Olives noires, Ail, Artichaut, Champignon, Parmesan)
(8, 5), (8, 22), (8, 8), (8, 13), (8, 21), (8, 9), (8, 15), (8, 14), (8, 1), (8, 3), (8, 7), (8, 18);