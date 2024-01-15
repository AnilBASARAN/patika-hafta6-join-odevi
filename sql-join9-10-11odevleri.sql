
--                             ODEV 9
--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--city tablosu ile country tablosunda bulunan 
--şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

--customer tablosu ile payment tablosunda bulunan customer_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

--customer tablosu ile rental tablosunda bulunan rental_id ile customer 
--tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

---------------------------------------------------------------------------------------------------------

SELECT country,city FROM country INNER JOIN city ON city.country_id = country.country_id;

----------------------------------------------------------------------------------------------------------

SELECT first_name,last_name FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id; 

----------------------------------------------------------------------------------------------------------

SELECT first_name,last_name FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id; 

----------------------------------------------------------------------------------------------------------



--                             ODEV 10

--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini 
--birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

----------------------------------------------------------------------------------------------

SELECT * FROM city
LEFT JOIN country ON city.country_id = country.country_id;


----------------------------------------------------------------------------------------------

SELECT * FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

----------------------------------------------------------------------------------------------

SELECT * FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;

----------------------------------------------------------------------------------------------






--                             ODEV 11

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
--İlk 3 sorguyu tekrar eden veriler için de yapalım.

--------------------------------------------------------------------------------------------------

(SELECT first_name
FROM actor
)

UNION

(SELECT first_name
FROM customer
);

--------------------------------------------------------------------------------------------------

(SELECT first_name
FROM actor
)

INTERSECT

(SELECT first_name
FROM customer
);

--------------------------------------------------------------------------------------------------


(SELECT first_name
FROM actor
)

EXCEPT

(SELECT first_name
FROM customer
);

--------------------------------------------------------------------------------------------------
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

--------------------------------------------------------------------------------------------------
SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

--------------------------------------------------------------------------------------------------
SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;

--------------------------------------------------------------------------------------------------