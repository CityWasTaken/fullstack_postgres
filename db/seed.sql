\c winery_app_db;

INSERT INTO users (first_name, last_name, email, manager_id) VALUES 
    ('Bob', 'Smith', 'smithbob@test.com', null),
    ('John', 'Doe', 'doejohn@test.com', null),
    ('Big', 'Dominican', 'bigdomm@test.com', 2);


INSERT INTO shops (name, address, user_id) VALUES 
    ('Bob Smith Winery', '555 wine dr', 1),
    ('Bob Smith Winery 2', '101 wine rd', 1),
    ('John Doe Winery', '123 wine st', 2);

INSERT INTO wines (brand, type, region, price, shop_id, user_id) VALUES 
    ('Josh', 'Cabernet', 'Napa Valley', 15.00, 1, 1),
    ('Chateau Arnauld 2018', 'Bordeaux', 'France', 41.99, 3, 2),
    ('Domaine de Chevalier 2018', 'Bordeaux', 'France', 94.99, 3, 3);