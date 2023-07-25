package org.example;

public class Main {
    public static void main(String[] args) {

         /* 1. Приведите 5 типовых бизнес-процессов для любой предметной области
        (кроме интернет-магазина), а также их соответствие по CRUD.


     1.TikTok
     2.Pinterest
     3.Instagram
     4.Google Ads
     5.LinkedIn
     (1,2,3,4,5)CRUD: Create,Read,Update(is_bloked , ispaid, is_removed),Delete



    В рамках БД "песочница" напишите след/запросы:

2. Вывести название и стоимость товаров от 20 EUR.
SELECT
ProductName,
Price
FROM [Products]
WHERE
 Price IN(20)

oder

SELECT
ProductName,
Price
FROM [Products]
WHERE
Price >= 20
3. Вывести страны поставщиков.
SELECT
Country
FROM [Suppliers]

4. В упорядоченном по стоимости виде вывести название и стоимость товаров со скидкой в 9% от всех поставщиков, кроме поставщика 1.

SELECT
ProductName,
Price * 0.09 AS Price_down
FROM [Products]
WHERE
   NOT CategoryID=1

5. Вывести контактные имена клиентов, кроме тех, что из France и USA.

SELECT
CustomerName
FROM Customers
WHERE
	NOT	Country='USA'
    AND
    NOT Country='France'  */



    }
}