## В рамках БД "онлайн-магазин" напишите след/запросы:

1. Вывести название и стоимость в `USD` одного самого дорогого проданного товара
   SELECT
   Products.ProductName,
   Products.Price * 1.1 AS Price_usd,
   Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
ORDER BY Price DESC
LIMIT 1
2. Вывести два самых дорогих товара из категории `Beverages` из `USA`

   SELECT
   Products.ProductName,
   Categories.CategoryName,
   Suppliers.Country
   FROM Products
   JOIN Categories ON Products.CategoryID=Categories.CategoryID
   JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
   WHERE
   Categories.CategoryName="Beverages"
   AND
   Suppliers.Country ='USA'
   ORDER BY Price DESC
   LIMIT 2
3. Удалить товары с ценой менее `5` EUR
   DELETE FROM Products
   WHERE
   Price>=5

   You have made changes to the database. Rows affected: 75

4. Вывести список стран, которые поставляют морепродукты
   SELECT
   CategoryName
   FROM Categories
   WHERE CategoryName ='Seafood'


5. Очистить поле `ContactName` у всех клиентов не из `China`
   UPDATE Customers
   SET CustomerName=''
   WHERE
   NOT Country IN('China')
 You have made changes to the database. Rows affected: 88