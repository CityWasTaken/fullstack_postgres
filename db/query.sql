\c winery_app_db;

SELECT
    u.id AS user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    u.email AS user_email,
    CONCAT(managers.first_name, ' ', managers.last_name) AS manager_name
FROM users AS u
LEFT JOIN users AS managers
    ON u.manager_id = managers.id;



-- Pull all rows from shops and also attach the associated users


SELECT 
    shops.id AS shop_id,
    name AS winery,
    address AS shop_address,
    users.id AS user_id,
    CONCAT(first_name, ' ', last_name) AS user_name,
    email AS user_email,
    wines.id AS wine_id,
    brand AS wine_brand,
    type AS wine_type,
    region AS wine_region,
    price AS wine_price
FROM shops
JOIN users
    ON shops.user_id = users.id
JOIN wines
    ON shops.id = wines.shop_id;
JOIN users AS managers