## В рамках БД "онлайн-магазин" напишите след/запросы:

1. Найти мин/стоимость товаров для каждой категории
SELECT
    CategoryID,
    MIN(Price + CategoryID) AS min_price
FROM Products

GROUP BY Price

ORDER BY min_price DESC
2. Вывести ТОП-3 стран по количеству доставленных заказов
SELECT
    Suppliers.Country,
    COUNT(*) AS total_orders
FROM Suppliers

ORDER BY total_orders
    LIMIT 3
3. Вывести названия категорий, в которых более 10 товаров
SELECT
    ProductName,
    CategoryID,
    COUNT(*) AS total_products
FROM Products
HAVING
        total_products >= 10
4. Очистить тел/номер поставщикам из `USA`
DELETE FROM Suppliers
WHERE
    Phone AND Country='USA'
5. Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
SELECT
    Employees.LastName,
    Employees.FirstName,
    COUNT(Orders.OrderID) AS total_orders
FROM Employees
         JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID
HAVING total_orders < 15
ORDER BY total_orders DESC

6. Вывести товар, который находится на втором месте по ко-ву заказов
SELECT
    Products.ProductName,
    SUM(OrderDetails.Quantity) AS sold_count
FROM OrderDetails
         JOIN Products ON OrderDetails.ProductID=Products.ProductID
GROUP BY OrderDetails.ProductID
ORDER BY sold_count DESC
    LIMIT 1 OFFSET 1