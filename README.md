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

</ol>


