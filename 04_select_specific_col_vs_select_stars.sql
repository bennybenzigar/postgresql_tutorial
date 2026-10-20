
--select star returns every columns

-- SELECT * FROM products ;
-- select specific colmns is going to return cols i want
-- SELECT name,  category, price, stock FROM products;

--AS  creates an alises for the output of that column name
--makes the colum name easier to read

SELECT 
name AS product_name,
price AS selling_price,
stock AS available_quamtity
FROM products;
