<h1 name="content" align="center"><a href=""><img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/></a> MSSQL</h1>

<p align="center">
  <a href="#-lab1"><img alt="lab1" src="https://img.shields.io/badge/Lab1-blue"></a> 
  <a href="#-lab2"><img alt="lab2" src="https://img.shields.io/badge/Lab2-red"></a>
  <a href="#-lab3"><img alt="lab3" src="https://img.shields.io/badge/Lab3-green"></a>
  <a href="#-lab4"><img alt="lab4" src="https://img.shields.io/badge/Lab4-yellow"></a>
  <a href="#-lab5"><img alt="lab5" src="https://img.shields.io/badge/Lab5-gray"></a>
  <a href="#-lab6"><img alt="lab6" src="https://img.shields.io/badge/Lab6-orange"></a> 
  <a href="#-lab7"><img alt="lab7" src="https://img.shields.io/badge/Lab7-brown"></a>
  <a href="#-lab8"><img alt="lab8" src="https://img.shields.io/badge/Lab8-purple"></a>
  <a href="#-lab9"><img alt="lab9" src="https://img.shields.io/badge/Lab9-violet"></a> 
</p>


[Назад](#content)

<h3 align="center">
  <a href="#client"></a>
 Вариант 16. Ломбард.
Описание Предметной области 

Список клиентов: ФИО, паспорт, адрес.
Товары: вид товара, список материалов, вес каждого материала в данном товаре, процент износа товара, сумма оценки.
Договор залога товара: дата, сумма на руки клиенту, срок выкупа, комиссионные, сведения о выкупе.

Реализовать:
- Отслеживание просроченных договоров с переводом  товаров в продажу;
- Статистика: вывод суммарной стоимости заключенных договоров, списки принятых товаров по датам и видам, список товаров, выставленных на продажу, подсчет выручки ломбарда от комиссионных за заданый период
- Поиск клиентов-должников, постоянных клиентов

</h3>

# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab1

<h3 align="center">
  <a href="#client"></a>
  1.1 Разработать ER-модель данной предметной области: выделить сущности, их атрибуты, связи между сущностями. 
Для каждой сущности указать ее имя, атрибут (или набор атрибутов), являющийся первичным ключом, список остальных атрибутов.
Для каждого атрибута указать его тип, ограничения, может ли он быть пустым, является ли он первичным ключом.
Для каждой связи между сущностями указать: 
- тип связи (1:1, 1:M, M:N)
- обязательность

ER-модель д.б. представлена в виде ER-диаграммы (картинка)

По имеющейся ER-модели создать реляционную модель данных и отобразить ее в виде списка сущностей с их атрибутами и типами атрибутов,  для атрибутов указать, явл. ли он первичным или внешним ключом 

</h3>
<h3>
  Er-диаграмма.
</h3>
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/photo_2025-09-13_16-34-56.jpg" width="3000" height="3000"/>

<h3>
  Реляционная модель.
</h3>
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/photo_2025-09-14_17-35-18.jpg" width="3000" height="3000"/>
[Назад](#content) 

# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab2

<h3>
  Задание:
  В соответствии с реляционной моделью данных, разработанной в Лаб.№1, создать реляционную БД на учебном сервере БД :
- создать таблицы, определить первичные ключи и иные ограничения
- определить связи между таблицами
- создать диаграмму
- заполнить все таблицы адекватной информацией (не меньше 10 записей в таблицах, наличие примеров для связей типа 1:M )

</h3>

[Посмотреть SQL-код создания таблицы](https://github.com/nik1kit/BD_labs/blob/main/SQL_code/Create_tables_lab1.sql)

<h3>
  Диаграмма таблицы:
  
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/diagr_table.png" width="3000" height="3000"/>
  
</h3>
  
<h3>
  Таблицы
</h3>
<h4>
  Клиент:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BA%D0%BB%D0%B8%D0%B5%D0%BD%D1%82.png" width="3000" height="3000"/>
</h4>
<h4>
  Контракт:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%B0%D0%BA%D1%82.png" width="3000" height="3000"/>
</h4>
<h4>
  Продукт:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%82.png" width="3000" height="3000"/>
</h4>
<h4>
  Материалы:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB%D1%8B.png" width="3000" height="3000"/>
</h4>
<h4>
  Продукт-материал:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%82-%D0%BC%D0%B0%D1%82%D0%B5%D1%80%D0%B8%D0%B0%D0%BB.png" width="3000" height="3000"/>
</h4>
<h4>
  Вид продукта:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D1%82%D0%B8%D0%BF_%D0%BF%D1%80%D0%BE%D0%B4%D1%83%D0%BA%D1%82%D0%B0.png" width="3000" height="3000"/>
</h4>
<h4>
  Продажа:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BF%D1%80%D0%BE%D0%B4%D0%B0%D0%B6%D0%B0.png" width="3000" height="3000"/>
</h4>
<h4>
  Менеджер:
  <img src="https://github.com/nik1kit/BD_labs/blob/main/charts/tables/%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80.png" width="3000" height="3000"/>
</h4>

# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab3


  [Реализация](https://github.com/nik1kit/BD_labs/blob/main/%D0%9B%D0%B0%D0%B1_3.docx)

<h3>  
  Лабораторная №3
Часть 1
Цель: изучить конструкции языка SQL для манипулирования данными в СУБД  MSSQL.
Задания и краткое описание работы:
1. Выборка из одной таблицы.
1.1 Выбрать из произвольной таблицы данные и отсортировать их по двум  произвольным имеющимся в таблице признакам (разные направления сортировки).
1.2 Выбрать из произвольной таблицы те записи, которые удовлетворяют
условию отбора (where). Привести 2-3 запроса.
1.3 Привести примеры 2-3 запросов с использованием агрегатных функций
(count, max, sum и др.) с группировкой и без группировки. 
1.4  Привести примеры подведения подытога с использованием GROUP BY [ALL] [ CUBE | ROLLUP](2-3 запроса). В ROLLUP и CUBE использовать не менее 2-х столбцов.
1.5 Выбрать из таблиц информацию об объектах, в названиях которых нет заданной последовательности букв (LIKE).

2. Выборка из нескольких таблиц.
2.1 Вывести информацию подчиненной (дочерней) таблицы, заменяя коды
(значения внешних ключей) соответствующими символьными значениями из
родительских таблиц. Привести 2-3 запроса с использованием классического
подхода соединения таблиц (where).
2.2. Реализовать запросы пункта 2.1 через внутреннее соединение inner join. 
2.3. Левое внешнее соединение left join. Привести 2-3 запроса.
2.4. Правое внешнее соединение right join. Привести 2-3 запроса 
2.5. Привести примеры 2-3 запросов с использованием агрегатных функций
и группировки.
2.6. Привести примеры 2-3 запросов с использованием группировки и условия отбора групп (Having).
2.7. Привести примеры 3-4 вложенных (соотнесенных, c использованием IN, EXISTS) запросов.
3. Представления
3.1  На основе любых запросов из п. 2 создать два представления (VIEW).
3.2  Привести примеры использования общетабличных выражений (СТЕ) (2-3 запроса)
4. Функции ранжирования
4.1 Привести примеры 3-4 запросов с использованием ROW_NUMBER, RANK, DENSE_RANK (c  PARTITION BY и без)
5. Объдинение, пересечение, разность
5.1 Привести примеры 3-4 запросов с использованием UNION / UNION ALL, EXCEPT, INTERSECT. Данные  в одном из запросов отсортируйте по произвольному признаку.
6. Использование CASE, PIVOT и UNPIVOT.
6.1 Привести примеры получения сводных (итоговых) таблиц с использованием CASE
6.2 Привести примеры получения сводных (итоговых) таблиц с использованием PIVOT и UNPIVOT.

Обязательными к выполнению являются запросы, приведенные ниже (смотри свой вариант).
Отчет  по лабораторной работе предоставляется в виде  документа (Фамилия_Группа.docx). 
В этом  документе по каждому заданию необходимо представить: условие запроса, текст SQL-запроса, скрин-копию результата выполнения запроса.
Часть 2
Составить следующие запросы:
a)  Выдать список товаров, выставленных на продажу
b)  Выдать список товаров, принятых в залог (дата, вид товара, количество)
c)  Найти выручку ломбарда от комиссионных с начала текущего года для каждого вила товара
d)  Найти клиентов, которые не выкупили свой товар в срок
e)  Найти клиентов, пользовавшихся услугами ломбарда 2 и более раз и всегда выкупавших все свои товары


</h3>

# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab4

Лабораторная №4
<ol type="a">
	<h3>Создать  4 различных хранимых процедуры:</h3>
	<li><b>Процедура без параметров, формирующая список товаров, которые не были выкуплены клиентами в сроки, описанные в договоре</li>

```
CREATE PROCEDURE GetExpiredUnredeemedProducts
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        pt.name AS ProductType,
        cl.full_name AS ClientName,
        c.redemption_term AS RedemptionTerm,
        c.redemption_date AS RedemptionDate
    FROM Contract c
        JOIN Product p ON c.id = p.contract_id
        JOIN ProductType pt ON p.product_type_id = pt.id
        JOIN Client cl ON c.client_id = cl.id
    WHERE 
        -- Либо не выкуплен вообще и срок уже прошёл
        (c.redemption_date IS NULL AND c.redemption_term < GETDATE())
        -- Либо выкуплен, но позже срока
        OR (c.redemption_date > c.redemption_term);
END;
GO


EXEC GetExpiredUnredeemedProducts;
```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.1.1.png" alt="Схема 4.3.2" width="450">

<li><b> Процедура, на входе получающая ФИО клиента и формирующая список товаров, которые он когда-либо приносил закладывать в ломбард</li>

```
CREATE PROCEDURE GetClientProducts
    @ClientName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        pt.name AS ProductType,
        p.valuation AS Valuation,
        p.depreciation AS Depreciation,
        c.contract_date AS ContractDate,
        c.sum_issued AS SumIssued,
        c.redemption_status AS RedemptionStatus
    FROM Client cl
        JOIN Contract c ON cl.id = c.client_id
        JOIN Product p ON c.id = p.contract_id
        JOIN ProductType pt ON p.product_type_id = pt.id
    WHERE 
        cl.full_name = @ClientName
    ORDER BY c.contract_date;
END;
GO


EXEC GetClientProducts @ClientName = N'Петров Петр Петрович';
```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.1.2.png" alt="Схема 4.1.2" width="450">

<li><b> Процедура, на входе получающая ФИО клиента, выходной параметр – общая сумма денег, которые он получил за все товары, заложенные им в ломбарде</li>

```
	CREATE PROCEDURE GetClientTotalMoney
    @FullName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TotalMoney DECIMAL(15,2);

    SELECT @TotalMoney = SUM(c.sum_issued)
    FROM Contract c
        JOIN Client cl ON c.client_id = cl.id
    WHERE cl.full_name = @FullName;

    IF @TotalMoney IS NULL
        SET @TotalMoney = 0;

    -- вывод
    SELECT 
        cl.full_name AS [Клиент],
        @TotalMoney AS [Общая сумма, выданная клиенту]
    FROM Client cl
    WHERE cl.full_name = @FullName;
END;
GO


EXEC GetClientTotalMoney @FullName = N'Петров Петр Петрович';
```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.1.3.png" alt="Схема 4.1.3" width="450">

<li><b> Процедура, вызывающая вложенную процедуру, которая находит самого «дорогого» клиента (с максимальной суммой денег, полученных им от ломбарда). Главная процедура выводит для этого клиента список товаров, которые он когда-либо приносил в залог, и сведения об их выкупе</li>
  
```
CREATE PROCEDURE GetRichestClient
    @RichestClient NVARCHAR(100) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1 
        @RichestClient = cl.full_name
    FROM Client cl
        JOIN Contract c ON cl.id = c.client_id
    GROUP BY cl.full_name
    ORDER BY SUM(c.sum_issued) DESC;
END;
GO


CREATE PROCEDURE ShowRichestClientProducts
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ClientName NVARCHAR(100);

    -- вызываем вложенную процедуру
    EXEC GetRichestClient @RichestClient = @ClientName OUTPUT;

    -- вывод всех товаров и информации о договорах
    SELECT 
        cl.full_name AS ClientName,
        pt.name AS ProductType,
        p.valuation AS Valuation,
        p.depreciation AS Depreciation,
        c.contract_date AS ContractDate,
        c.sum_issued AS SumIssued,
        c.redemption_date AS RedemptionDate,
        c.redemption_status AS RedemptionStatus
    FROM Client cl
        JOIN Contract c ON cl.id = c.client_id
        JOIN Product p ON c.id = p.contract_id
        JOIN ProductType pt ON p.product_type_id = pt.id
    WHERE cl.full_name = @ClientName
    ORDER BY c.contract_date;
END;
GO



EXEC ShowRichestClientProducts;

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.1.4.png" alt="Схема 4.1.4" width="450">

</ol>

<ol type="a">
<h3>3	пользовательских функции:</h3>

<li><b>Скалярная функция, подсчитывающая количество товаров, которые д.б. выставлены на продажу (не выкуплены в срок) </li>
  
```  
CREATE FUNCTION dbo.GetProductsForSale()
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*)
    FROM Product p
        JOIN Contract c ON p.contract_id = c.id
    WHERE c.redemption_date IS NULL
      AND c.redemption_term < GETDATE();

    RETURN @Count;
END;
GO

SELECT dbo.GetProductsForSale() AS [Товаров к продаже];
```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.2.1.png" alt="Схема 4.2.1" width="450">

<li><b>Inline-функция, возвращающая список клиентов, которые не всегда выкупали свои товары </li>

```
CREATE FUNCTION dbo.GetClientsWithDelayedRedemptions()
RETURNS TABLE
AS
RETURN
(
    SELECT DISTINCT
        cl.id AS ClientID,
        cl.full_name AS ClientName
    FROM Client cl
        JOIN Contract c ON cl.id = c.client_id
    WHERE 
        (c.redemption_date > c.redemption_term)
        OR (c.redemption_date IS NULL AND c.redemption_term < GETDATE())
);
GO


SELECT * 
FROM dbo.GetClientsWithDelayedRedemptions();

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.2.2.png" alt="Схема 4.2.2" width="450">	


<li><b> Multi-statement-функция, выдающая список товаров, состоящих из 3-х и более материалов, и ФИО их владельца</li>

```
CREATE FUNCTION dbo.GetProductsWithThreeOrMoreMaterials()
RETURNS @Result TABLE
(
    ProductID INT,
    ProductType NVARCHAR(100),
    ClientName NVARCHAR(100),
    MaterialCount INT
)
AS
BEGIN
    INSERT INTO @Result (ProductID, ProductType, ClientName, MaterialCount)
    SELECT 
        p.id AS ProductID,
        pt.name AS ProductType,
        cl.full_name AS ClientName,
        COUNT(pm.material_id) AS MaterialCount
    FROM Product p
        JOIN ProductType pt ON p.product_type_id = pt.id
        JOIN Contract c ON p.contract_id = c.id
        JOIN Client cl ON c.client_id = cl.id
        JOIN ProductMaterial pm ON p.id = pm.product_id
    GROUP BY 
        p.id, pt.name, cl.full_name
    HAVING COUNT(pm.material_id) >= 3;

    RETURN;
END;
GO


SELECT * 
FROM dbo.GetProductsWithThreeOrMoreMaterials();

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.2.3.png" alt="Схема 4.2.3" width="450">
</ol>
<ol type="a">
<h3>Создать  3 триггера:</h3>
<li><b>a) Триггер любого типа на добавление товара – если процент износа > 50, то товар не добавляется, выдается соотв. сообщение</li>

```
CREATE TRIGGER trg_CheckDepreciation
ON Product
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id INT, @valuation DECIMAL(15,2), @depreciation DECIMAL(5,2),
            @product_type_id INT, @contract_id INT;

    DECLARE insert_cursor CURSOR FOR
    SELECT id, valuation, depreciation, product_type_id, contract_id
    FROM inserted;

    OPEN insert_cursor;
    FETCH NEXT FROM insert_cursor INTO @id, @valuation, @depreciation, @product_type_id, @contract_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF @depreciation > 50
        BEGIN
            PRINT 'Товар не добавлен: процент износа превышает 50%';
        END
        ELSE
        BEGIN
            INSERT INTO Product (valuation, depreciation, product_type_id, contract_id)
            VALUES (@valuation, @depreciation, @product_type_id, @contract_id);
        END

        FETCH NEXT FROM insert_cursor INTO @id, @valuation, @depreciation, @product_type_id, @contract_id;
    END

    CLOSE insert_cursor;
    DEALLOCATE insert_cursor;
END;
GO


INSERT INTO Product (valuation, depreciation, product_type_id, contract_id)
VALUES
(10000.00, 40.00, 1, 1),  -- вставится
(5000.00, 60.00, 2, 2);   -- не вставится, сообщение

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.3.1.png" alt="Схема 4.3.1" width="450">

<li><b>b)Последующий триггер на изменение признака выкупа товара – если срок выкупа истек, то признак выкупа может поменяться только на значение «не выкуплен», если нет, то признак выкупа может поменяться только на значение «выкуплен» </li>

```
CREATE TRIGGER trg_CheckRedemptionStatus_Test
ON ContractTestее
INSTEAD OF UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id INT, @newStatus NVARCHAR(100), @term DATETIME;

    DECLARE upd_cursor CURSOR FOR
    SELECT i.id, i.redemption_status, i.redemption_term
    FROM inserted i;

    OPEN upd_cursor;
    FETCH NEXT FROM upd_cursor INTO @id, @newStatus, @term;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF (@term < GETDATE() AND @newStatus <> 'Не выкуплен')
            PRINT 'Ошибка: срок выкупа истёк, статус может быть только "Не выкуплен"';
        ELSE IF (@term >= GETDATE() AND @newStatus <> 'Выкуплен')
            PRINT 'Ошибка: срок выкупа ещё не истёк, статус может быть только "Выкуплен"';
        ELSE
            UPDATE ContractTestее
            SET redemption_status = @newStatus
            WHERE id = @id;

        FETCH NEXT FROM upd_cursor INTO @id, @newStatus, @term;
    END

    CLOSE upd_cursor;
    DEALLOCATE upd_cursor;
END;
GO



-- Срок прошёл → статус должен быть "Не выкуплен"
UPDATE ContractTestее
SET redemption_status = 'Не выкуплен'
WHERE id = 1;  -- корректно


-- Срок не прошёл → пытаемся установить "Не выкуплен" → должно откатиться
UPDATE ContractTestее
SET redemption_status = 'Не выкуплен'
WHERE id = 3;

SELECT id, redemption_status, redemption_term, contract_date
FROM ContractTestее
WHERE id IN (1,3);

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.3.2.png" alt="Схема 4.3.2" width="450">	






<li><b>Замещающий триггер на операцию удаления владельца товара – если у него по всем договорам товары выкуплены, то удаляем  владельца и все его договора, если нет – ничего не удаляем, выводим сообщение </li>

```
CREATE TRIGGER trg_CheckClientDelete
ON Client
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ClientID INT;

    DECLARE client_cursor CURSOR FOR
    SELECT id FROM deleted;

    OPEN client_cursor;
    FETCH NEXT FROM client_cursor INTO @ClientID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Проверяем наличие невыкупленных товаров
        IF EXISTS (
            SELECT 1
            FROM Contract c
            JOIN Product p ON p.contract_id = c.id
            WHERE c.client_id = @ClientID
              AND (
                    c.redemption_date IS NULL AND c.redemption_term < GETDATE()
                  )
        )
        BEGIN
            PRINT 'Невозможно удалить клиента с ID=' + CAST(@ClientID AS NVARCHAR(10)) + ': есть товары, не выкупленные в срок';
        END
        ELSE
        BEGIN
            -- 1. Удаляем продажи товаров
            DELETE s
            FROM Sale s
            JOIN Product p ON s.product_id = p.id
            JOIN Contract c ON p.contract_id = c.id
            WHERE c.client_id = @ClientID;

            -- 2. Удаляем материалы товаров
            DELETE pm
            FROM ProductMaterial pm
            JOIN Product p ON pm.product_id = p.id
            JOIN Contract c ON p.contract_id = c.id
            WHERE c.client_id = @ClientID;

            -- 3. Удаляем товары
            DELETE p
            FROM Product p
            JOIN Contract c ON p.contract_id = c.id
            WHERE c.client_id = @ClientID;

            -- 4. Удаляем договоры
            DELETE FROM Contract
            WHERE client_id = @ClientID;

            -- 5. Удаляем клиента
            DELETE FROM Client
            WHERE id = @ClientID;

            PRINT 'Клиент с ID=' + CAST(@ClientID AS NVARCHAR(10)) + ' и все его договора, товары, продажи и материалы удалены';
        END

        FETCH NEXT FROM client_cursor INTO @ClientID;
    END

    CLOSE client_cursor;
    DEALLOCATE client_cursor;
END;
GO




-- Клиент с невыкупленными товарами → удаление запрещено
DELETE FROM Client
WHERE id = 1;

-- Клиент со всеми выкупленными товарами → удаление разрешено
DELETE FROM Client
WHERE id = 2;

```
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/ForLab4/4.3.3.png" alt="Схема 4.3.3" width="450">
</ol>

# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab6
[Назад](#content)
<h3 align="center">
  <a href="#client"></a>
</h3>

<div>
  <h4>Создание графовых таблиц и работа с ними</h4>
  
  <p><b>Задание 1:</b></p>
  <ol>
    <li>Используйте реляционную БД из лабораторной работы №2.</li>
    <li>Продумайте и создайте графовые таблицы по реляционной БД, заполните графовые таблицы используя данные в реляционных таблицах.</li>
    <li>ЗНапишите запросы из задания 3.2 используя паттерн MATCH.</li>
    <li>Сравните полученные результаты  с  результатами запросов к реляционной модели.</li>
  </ol>
  
  <p><b>Отчет предоставить в виде:</b></p>
  <ul>
    <li>Схема узлов и ребер.</li>
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/%D0%B3%D1%80%D0%B0%D1%84.png" alt="Узлы и рёбра" width="650">
    <li>Скрипт для создания и заполнения графовых таблиц</li>
	  
```
-- Создание узлов
CREATE TABLE ClientNode (
    id INT,
    full_name NVARCHAR(100),
    address NVARCHAR(100),
    passport_data NVARCHAR(15)
) AS NODE;

CREATE TABLE ManagerNode (
    id INT,
    full_name NVARCHAR(100),
    passport_data NVARCHAR(15),
    phone_number NVARCHAR(20)
) AS NODE;

CREATE TABLE ContractNode (
    id INT,
    redemption_term DATETIME,
    commission DECIMAL(10,2),
    sum_issued DECIMAL(15,2),
    contract_date DATETIME,
    redemption_date DATETIME,
    redemption_status NVARCHAR(100)
) AS NODE;

CREATE TABLE ProductNode (
    id INT,
    valuation DECIMAL(15,2),
    depreciation DECIMAL(5,2)
) AS NODE;

CREATE TABLE ProductTypeNode (
    id INT,
    name NVARCHAR(100)
) AS NODE;

CREATE TABLE MaterialNode (
    id INT,
    name NVARCHAR(100)
) AS NODE;

CREATE TABLE SaleNode (
    id INT,
    price DECIMAL(15,2),
    sale_date DATETIME
) AS NODE;


-- Создание ребер
CREATE TABLE ClientHasContract AS EDGE;
CREATE TABLE ManagerApprovesContract AS EDGE;
CREATE TABLE ContractHasProduct AS EDGE;
CREATE TABLE ProductHasType AS EDGE;
CREATE TABLE ProductHasMaterial (
    weight DECIMAL(5,2)
) AS EDGE;
CREATE TABLE ProductWasSold AS EDGE;


-- Заполнение узлов
INSERT INTO ClientNode SELECT id, full_name, address, passport_data FROM Client;
INSERT INTO ManagerNode SELECT id, full_name, passport_data, phone_number FROM Manager;
INSERT INTO ContractNode SELECT id, redemption_term, commission, sum_issued, contract_date, redemption_date, redemption_status FROM Contract;
INSERT INTO ProductNode SELECT id, valuation, depreciation FROM Product;
INSERT INTO ProductTypeNode SELECT id, name FROM ProductType;
INSERT INTO MaterialNode SELECT id, name FROM Material;
INSERT INTO SaleNode SELECT id, price, sale_date FROM Sale;


-- Заполнение ребер
-- 1) Client -> Contract
INSERT INTO ClientHasContract ($from_id, $to_id)
SELECT cn.$node_id, contn.$node_id
FROM ClientNode cn
JOIN Client c ON cn.id = c.id                   
JOIN Contract cont ON c.id = cont.client_id    
JOIN ContractNode contn ON contn.id = cont.id;  

-- 2) Manager -> Contract
INSERT INTO ManagerApprovesContract ($from_id, $to_id)
SELECT mn.$node_id, contn.$node_id
FROM ManagerNode mn
JOIN Manager m ON mn.id = m.id
JOIN Contract cont ON m.id = cont.manager_id
JOIN ContractNode contn ON contn.id = cont.id;

-- 3) Contract -> Product
INSERT INTO ContractHasProduct ($from_id, $to_id)
SELECT contn.$node_id, pn.$node_id
FROM ContractNode contn
JOIN Contract cont ON contn.id = cont.id
JOIN Product p ON p.contract_id = cont.id
JOIN ProductNode pn ON pn.id = p.id;

-- 4) Product -> ProductType
INSERT INTO ProductHasType ($from_id, $to_id)
SELECT pn.$node_id, ptn.$node_id
FROM ProductNode pn
JOIN Product p ON pn.id = p.id
JOIN ProductType pt ON p.product_type_id = pt.id
JOIN ProductTypeNode ptn ON ptn.id = pt.id;

-- 5) Product -> Material (с weight в свойстве ребра)
INSERT INTO ProductHasMaterial ($from_id, $to_id, weight)
SELECT pn.$node_id, mn.$node_id, pm.weight
FROM ProductNode pn
JOIN Product p ON pn.id = p.id
JOIN ProductMaterial pm ON p.id = pm.product_id
JOIN MaterialNode mn ON mn.id = pm.material_id;

-- 6) Product -> Sale
INSERT INTO ProductWasSold ($from_id, $to_id)
SELECT pn.$node_id, sn.$node_id
FROM ProductNode pn
JOIN Product p ON pn.id = p.id
JOIN Sale s ON s.product_id = p.id
JOIN SaleNode sn ON sn.id = s.id;

```
<li>Запросы из задания 3.2 к двум моделям(реляционная, графовая).</li>
  </ul>
<ol>
  <li>Список товаров, выставленных на продажу:</li>
	
```
SELECT DISTINCT
    p.id AS ProductID,
    pt.name AS ProductType,
    p.valuation AS Valuation,
    p.depreciation AS Depreciation,
    s.price AS SalePrice,
    s.sale_date AS SaleDate
FROM ProductNode p,
     ProductHasType pht,
     ProductTypeNode pt,
     ProductWasSold pws,
     SaleNode s
WHERE MATCH(
    p-(pht)->pt
    AND
    p-(pws)->s
);
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/1.png" alt="Схема 6.1" width="500">
<li>Выдать список товаров, принятых в залог</li>
  
```
SELECT
    c.contract_date AS AcceptanceDate,
    pt.name         AS ProductType,
    COUNT(p.id)     AS Quantity
FROM ContractNode c,
     ContractHasProduct chp,
     ProductNode p,
     ProductHasType pht,
     ProductTypeNode pt
WHERE MATCH(
    c-(chp)->p
    AND
    p-(pht)->pt
)
GROUP BY c.contract_date, pt.name
ORDER BY c.contract_date;

```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/2.png" alt="Схема 6.2" width="600">
<li>Выручка ломбарда от комиссионных с начала года:</li>

```
SELECT
    pt.name AS ProductType,
    SUM(c.sum_issued * c.commission / 100) AS CommissionRevenue
FROM ContractNode c,
     ContractHasProduct chp,
     ProductNode p,
     ProductHasType pht,
     ProductTypeNode pt
WHERE MATCH(
    c-(chp)->p
    AND
    p-(pht)->pt
)
  AND YEAR(c.contract_date) = YEAR(GETDATE())
GROUP BY pt.name
ORDER BY CommissionRevenue DESC;

```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/3.png" alt="Схема 6.3" width="600">
<li>Клиенты, которые не выкупили товар в срок:</li>

```
SELECT
    cl.full_name      AS Client,
    c.contract_date   AS ContractDate,
    c.redemption_term AS RedemptionTerm,
    c.redemption_date AS RedemptionDate
FROM ClientNode cl,
     ClientHasContract chc,
     ContractNode c
WHERE MATCH(
    cl-(chc)->c
)
  AND (
        (c.redemption_date IS NULL AND c.redemption_term < GETDATE())
     OR (c.redemption_date > c.redemption_term)
  );

```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/4.png" alt="Схема 6.4" width="600">
<li>Клиенты: 2+ раз пользовались услугами:</li>

```
SELECT
    cl.id AS ClientID,
    cl.full_name AS Client,
    COUNT(c.id) AS ContractsCount
FROM ClientNode cl,
     ClientHasContract chc,
     ContractNode c
WHERE MATCH(
    cl-(chc)->c
)
GROUP BY cl.id, cl.full_name
HAVING 
    COUNT(c.id) >= 2
    AND SUM(CASE WHEN c.redemption_status <> 'Выкуплен' THEN 1 ELSE 0 END) = 0;

```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/for_lab6/5.png" alt="Схема 6.5" width="550">
</ol>
</div>


# <img src="https://github.com/user-attachments/assets/e080adec-6af7-4bd2-b232-d43cb37024ac" width="20" height="20"/> Lab7
[Назад](#content)
<h3 align="center">
  <a href="#client"></a>
</h3>

<div>
  <h3>Задание 1</h3>
  <p>Используя базу, полученную в лабораторной 2, создать транзакцию, произвести ее откат и фиксацию. Показать, что данные существовали до отката, удалились после отката, снова были добавлены, и затем были успешно зафиксированы. При необходимости используйте точки сохранения и вложенные транзакции.</p>

```
-- =======================
-- ЗАДАНИЕ 1: ТРАНЗАКЦИИ
-- =======================

-- 1. Показываем исходные данные в таблице Client
SELECT * FROM Client;

-- 2. Начинаем транзакцию
BEGIN TRANSACTION;

-- 3. Добавляем нового клиента
INSERT INTO Client (full_name, address, passport_data) 
VALUES ('Новиков Александр Петрович', 'ул. Мира, 15', '3030 404040');

-- 4. Проверяем данные после добавления (внутри транзакции)
SELECT * FROM Client WHERE full_name LIKE '%Новиков%';

-- 5. Создаём точку сохранения (SAVEPOINT)
SAVE TRANSACTION SAVEPOINT_1;

-- 6. Добавляем еще одного клиента
INSERT INTO Client (full_name, address, passport_data) 
VALUES ('Козлова Мария Сергеевна', 'ул. Садовая, 8', '5050 606060');

-- 7. Проверяем данные после второго добавления
SELECT * FROM Client WHERE full_name LIKE '%Новиков%' OR full_name LIKE '%Козлова%';

-- 8. Выполняем откат к точке сохранения
ROLLBACK TRANSACTION SAVEPOINT_1;

-- 9. Проверяем данные после отката
SELECT * FROM Client WHERE full_name LIKE '%Новиков%' OR full_name LIKE '%Козлова%';

-- 10. Добавляем другого клиента после отката
INSERT INTO Client (full_name, address, passport_data) 
VALUES ('Семенова Ольга Игоревна', 'ул. Лесная, 3', '7070 808080');

-- 11. Проверяем данные перед фиксацией
SELECT * FROM Client WHERE full_name LIKE '%Новиков%' OR full_name LIKE '%Семенова%';

-- 12. ФИКСИРУЕМ ТРАНЗАКЦИЮ
COMMIT TRANSACTION;

-- 13. Проверяем итоговые данные
SELECT * FROM Client ORDER BY id DESC;

-- 14. Очистка добавленных данных (для последующих экспериментов)
DELETE FROM Client WHERE passport_data IN ('3030 404040', '7070 808080');
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/1.png" width="600">
  <h3>Задание 2</h3>
  <p>Подготовить SQL-скрипты для выполнения проверок изолированности транзакций. Ваши скрипты должны работать с одной из таблиц, созданных в лабораторной работе №2.</p>

  <h4>СЦЕНАРИИ ПРОВЕРКИ:</h4>
  <li>
	  Сценарий 1: READ UNCOMMITTED - Грязное чтение (Dirty Read)
  </li>
  Первое окно:
  
  ```
-- БЛОК 1.1 (ШАГ 1) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;
UPDATE Contract SET sum_issued = 99999 WHERE id = 1;
SELECT 'T1: Изменил на 99999 (не закоммитил)' as Info, 
       id, sum_issued, redemption_status FROM Contract WHERE id = 1;

-- БЛОК 1.3 (ШАГ 3)
ROLLBACK;
SELECT 'T1: После отката (вернул исходное)' as Info,
       id, sum_issued, redemption_status FROM Contract WHERE id = 1;

  ```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/1/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/1/1.2.png" width="600">

Второе окно:

```
-- БЛОК 1.2 (ШАГ 2) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;
SELECT 'T2: Вижу 99999! (грязное чтение)' as Info,
       id, sum_issued, redemption_status FROM Contract WHERE id = 1;

-- БЛОК 1.4 (ШАГ 4) 
SELECT 'T2: Теперь вижу старые данные' as Info,
       id, sum_issued, redemption_status FROM Contract WHERE id = 1;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/1/2.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/1/2.2.png" width="600">


  <li>
	  Сценарий 2: READ UNCOMMITTED - Потерянные изменения (Lost Update)
  </li>

Первое окно:

```
-- БЛОК 2.1 (ШАГ 1)
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;
SELECT 'T1: Читаю исходные данные' as Info, id, sum_issued FROM Contract WHERE id = 3;

-- БЛОК 2.3 (ШАГ 3)
UPDATE Contract SET sum_issued = 7000.00 * 1.10 WHERE id = 3;
SELECT 'T1: После увеличения' as Info, id, sum_issued FROM Contract WHERE id = 3;
COMMIT;
SELECT 'ИТОГ: Изменения T2 потеряны! (Было бы 6650, стало 7700)' as Info,
       id, sum_issued FROM Contract WHERE id = 3;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/2/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/2/1.2.png" width="600">

Второе окно:

```
-- БЛОК 2.2 (ШАГ 2)
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;
UPDATE Contract SET sum_issued = sum_issued * 0.95 WHERE id = 3;
SELECT 'T2: После уменьшения' as Info, id, sum_issued FROM Contract WHERE id = 3;
COMMIT;  
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/2/2.1.png" width="600">

  <li>
	  Сценарий 3: READ COMMITTED - Защита от грязного чтения
  </li>


Первое окно:

```
-- БЛОК 3.1 (ШАГ 1) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
UPDATE Contract SET commission = commission + 2 WHERE id = 5;
SELECT 'T1: Изменил комиссию (не закоммитил)' as Info,
       id, commission, sum_issued FROM Contract WHERE id = 5;

-- БЛОК 3.3 (ШАГ 3) 
ROLLBACK;
SELECT 'T1: После отката' as Info,
       id, commission, sum_issued FROM Contract WHERE id = 5;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/3/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/3/1.2.png" width="600">

Второе окно:

```
-- БЛОК 3.2 (ШАГ 2) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
SELECT 'T2: ЖДЁТ завершения T1...' as Info,
       id, commission, sum_issued FROM Contract WHERE id = 5;

-- БЛОК 3.4 (ШАГ 4) 
SELECT 'T2: Теперь вижу исходные данные' as Info,
       id, commission, sum_issued FROM Contract WHERE id = 5;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/3/2.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/3/2.2.png" width="600">

  <li>
	  Сценарий 4: READ COMMITTED - Неповторяющееся чтение
  </li>


Первое окно:

```
-- БЛОК 4.1 (ШАГ 1) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
SELECT 'T1: Первое чтение' as Info,
       id, redemption_status, sum_issued FROM Contract WHERE id = 7;

-- БЛОК 4.3 (ШАГ 3) 
SELECT 'T1: Второе чтение (данные ИЗМЕНИЛИСЬ!)' as Info,
       id, redemption_status, sum_issued FROM Contract WHERE id = 7;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/4/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/4/1.2.png" width="600">

Второе окно:

```
-- БЛОК 4.2 (ШАГ 2)
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;
UPDATE Contract SET 
    redemption_status = 'Изменен T2',
    sum_issued = sum_issued + 1000 
WHERE id = 7;
SELECT 'T2: После изменения' as Info,
       id, redemption_status, sum_issued FROM Contract WHERE id = 7;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/4/2.1.png" width="600">

  <li>
	  СЦЕНАРИЙ 5: REPEATABLE READ - Защита от неповторяющегося чтения
  </li>


Первое окно:

```
-- БЛОК 5.1 (ШАГ 1)
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;
SELECT 'T1: Первое чтение договоров клиента 1' as Info,
       id, sum_issued, redemption_status 
FROM Contract WHERE client_id = 1;

-- БЛОК 5.3 (ШАГ 3)
SELECT 'T1: Второе чтение (данные НЕ изменились!)' as Info,
       id, sum_issued, redemption_status 
FROM Contract WHERE client_id = 1;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/5/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/5/1.2.png" width="600">

Второе окно:

```
-- БЛОК 5.2 (ШАГ 2) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;
UPDATE Contract SET sum_issued = sum_issued + 500 WHERE client_id = 1;

-- БЛОК 5.4 (ШАГ 4) 
SELECT 'T2: Теперь могу изменить' as Info,
       id, sum_issued, redemption_status 
FROM Contract WHERE client_id = 1;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/5/2.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/5/2.2.png" width="600">

  <li>
	  СЦЕНАРИЙ 6: REPEATABLE READ - Фантомное чтение (статус 'Не выкуплен')
  </li>


Первое окно:

```
-- БЛОК 6.1 (ШАГ 1) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;
SELECT 'T1: Первый подсчет невыкупленных' as Info,
       COUNT(*) as Количество,
       SUM(sum_issued) as Общая_сумма
FROM Contract WHERE redemption_status = 'Не выкуплен';

-- БЛОК 6.3 (ШАГ 3)
SELECT 'T1: Второй подсчет (появился ФАНТОМ!)' as Info,
       COUNT(*) as Количество,
       SUM(sum_issued) as Общая_сумма
FROM Contract WHERE redemption_status = 'Не выкуплен';
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/6/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/6/1.2.png" width="600">

Второе окно:

```
-- БЛОК 6.2 (ШАГ 2)
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;

-- Находим договор с другим статусом и меняем его
UPDATE TOP (1) Contract 
SET redemption_status = 'Не выкуплен'
WHERE redemption_status <> 'Не выкуплен'
  AND id IN (1, 3, 5, 7, 9);  -- только наши тестовые id

SELECT 'T2: Изменил статус договора' as Info,
       COUNT(*) as Изменено_договоров
FROM Contract 
WHERE redemption_status = 'Не выкуплен';

COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/6/2.1.png" width="600">


  <li>
	  СЦЕНАРИЙ 7: SERIALIZABLE - Защита от фантомов (комиссия > 4)
  </li>


Первое окно:

```
-- БЛОК 7.1 (ШАГ 1) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
SELECT 'T1: Первый подсчет договоров с комиссией > 4%' as Info,
       COUNT(*) as Количество,
       AVG(commission) as Средняя_комиссия
FROM Contract WHERE commission > 4.0;

-- БЛОК 7.3 (ШАГ 3) 
SELECT 'T1: Второй подсчет (фантомов НЕТ!)' as Info,
       COUNT(*) as Количество,
       AVG(commission) as Средняя_комиссия
FROM Contract WHERE commission > 4.0;
COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/7/1.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/7/1.2.png" width="600">

Второе окно:

```
-- БЛОК 7.2 (ШАГ 2) 
USE Ломбард;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;

-- Находим договор с комиссией <= 4 и увеличиваем её > 4
-- Так он попадет в выборку T1 (комиссия > 4)
UPDATE TOP (1) Contract 
SET commission = 6.0  -- Увеличиваем до 6% (больше 4)
WHERE commission <= 4.0 
  AND id IN (1, 3, 5, 7, 9);  -- Только наши тестовые id

SELECT 'T2: Пытаюсь изменить комиссию' as Info;

-- БЛОК 7.4 (ШАГ 4)
SELECT 'T2: Теперь могу изменить' as Info;

-- Просто показываем все наши тестовые договоры
SELECT 'Все тестовые договоры после изменений:' as Info,
       id, commission, redemption_status, sum_issued
FROM Contract 
WHERE id IN (1, 3, 5, 7, 9)
ORDER BY id;

COMMIT;
```

<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/7/2.1.png" width="600">
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/lab7/7/2.2.png" width="600">

  </ul>
</div>
