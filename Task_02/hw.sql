1.Вывести название и стоимость в USD одного самого дорогого
 проданного товара

SELECT ProductName , 
Price * .93 AS USD
FROM Products
ORDER BY Price DESC
LIMIT 1

2.Вывести два самых дорогих товара из категории Beverages из USA

SELECT * 
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE 
CategoryName = 'Beverages'
ORDER BY Price DESC
LIMIT 2

3.Удалить товары с ценой менее 5 EUR

DELETE FROM Products
WHERE
Price <5

4.Вывести список стран, которые поставляют морепродукты

SELECT Country
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
CategoryID = 8


5.Очистить поле ContactName у всех клиентов не из China

UPDATE Customers
SET
ContactName = ''
WHERE
Country != 'China'