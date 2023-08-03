## В рамках БД "онлайн-магазин" напишите след/запросы:

1. Вывести ко-во заказов, которое компания `Speedy Express` доставила в `Brazil`
SELECT
    COUNT(*) AS total_orders
FROM Orders

         JOIN Customers ON Orders.CustomerID=Customers.CustomerID
         JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
WHERE
        Customers.Country='Brazil'
  AND
        Shippers.ShipperName='Speedy Express'

   Answer: total_orders 6

2. Вывести среднюю стоимость проданного в `Germany` товара
SELECT
    AVG(Products.Price) AS avg_price
FROM Products
         JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.Country='Germany'

Answer: avg_price :37.60111111111111
3. Вывести ко-во и сред/стоимость товаров из `USA`
SELECT
    AVG(Products.Price) AS avg_price
FROM Products
    JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
    JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
WHERE Suppliers.Country='USA'
  AND
    OrderDetails.Quantity

Answer: avg_price: 18.69322033898305
4. Вывести стоимость и название двух самых дешевых товаров из `Germany`
SELECT
    Products.ProductName,
    Products.Price,
    AVG(Price) AS avg_price
FROM Products
         JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Products.ProductName
   OR
        Suppliers.Country='Germany'

Answer: NuNuCa Nuß-Nougat-Creme	14	37.60111111111111

    5. Применить наценку в 15% ко всем товарам из категории `4`
SELECT
SUM(Price / 15 )as products_sum
FROM Products
WHERE ProductID='4'

## Доп.задача
- создать схему БД для "онлайн-игры: шахматы" с помощью инструмента онлайн-проектирования
**Сущности**

1. `players`
    - перв/ключ
    - дата/время создания
    - псевдоним
    - статус блокировки (is_blocked)
2. `matches` матчи (партии)
    - дата/время создания
    - nasvanija
3. `messages`

4. `chats`
5. `maps`