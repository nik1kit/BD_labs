-- =======================
-- Таблица Client
-- =======================
CREATE TABLE Client (
    id_client INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100) NOT NULL,
    address NVARCHAR(100),
    passport_data NVARCHAR(15) UNIQUE NOT NULL
);

INSERT INTO Client (full_name, address, passport_data) VALUES
('Иванов Иван Иванович', 'ул. Ленина, 10', '1111 222222'),
('Петров Петр Петрович', 'ул. Советская, 5', '2222 333333'),
('Сидоров Сидор Сидорович', 'ул. Гагарина, 7', '3333 444444'),
('Кузнецов Николай Николаевич', 'ул. Чехова, 3', '4444 555555'),
('Смирнов Андрей Алексеевич', 'ул. Пушкина, 1', '5555 666666'),
('Васильев Алексей Викторович', 'ул. Кирова, 12', '6666 777777'),
('Морозов Дмитрий Игоревич', 'ул. Свердлова, 9', '7777 888888'),
('Волков Максим Сергеевич', 'ул. Полевая, 4', '8888 999999'),
('Зайцев Павел Олегович', 'ул. Заречная, 6', '9999 111111'),
('Соловьев Артем Николаевич', 'ул. Центральная, 2', '1010 202020');

-- =======================
-- Таблица Manager
-- =======================
CREATE TABLE Manager (
    id_manager INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100) NOT NULL,
    passport_data NVARCHAR(15) UNIQUE NOT NULL,
    phone_number NVARCHAR(20)
);

INSERT INTO Manager (full_name, passport_data, phone_number) VALUES
('Ковалев Сергей Михайлович', '1212 343434', '89000000001'),
('Новиков Олег Васильевич', '1313 454545', '89000000002'),
('Федоров Артем Андреевич', '1414 565656', '89000000003'),
('Егоров Денис Владимирович', '1515 676767', '89000000004'),
('Попов Илья Алексеевич', '1616 787878', '89000000005'),
('Борисов Кирилл Олегович', '1717 898989', '89000000006'),
('Алексеев Максим Николаевич', '1818 909090', '89000000007'),
('Гаврилов Дмитрий Павлович', '1919 101010', '89000000008'),
('Михайлов Иван Иванович', '2020 111111', '89000000009'),
('Николаев Артем Сергеевич', '2121 121212', '89000000010');

-- =======================
-- Таблица ProductType
-- =======================
CREATE TABLE ProductType (
    id_product_type INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL
);

INSERT INTO ProductType (name) VALUES
('Фен электрический'),
('Золотые часы'),
('Смартфон'),
('Кольцо'),
('Телевизор'),
('Блендер'),
('Ноутбук'),
('Серебряная цепочка'),
('Пылесос'),
('Фотоаппарат');

-- =======================
-- Таблица Contract
-- =======================
CREATE TABLE Contract (
    id_contract INT PRIMARY KEY IDENTITY(1,1),
    redemption_term DATETIME NOT NULL,
    commission DECIMAL(10,2),
    sum_issued DECIMAL(15,2) NOT NULL,
    contract_date DATETIME NOT NULL,
    redemption_date DATETIME,
    redemption_status NVARCHAR(100),
    id_client INT NOT NULL,
    id_manager INT NOT NULL,
    FOREIGN KEY (id_client) REFERENCES Client(id_client),
    FOREIGN KEY (id_manager) REFERENCES Manager(id_manager)
);

INSERT INTO Contract (redemption_term, commission, sum_issued, contract_date, redemption_date, redemption_status, id_client, id_manager) VALUES
('20251001', 5.50, 5000.00, '20250901', NULL, 'Не выкуплен', 1, 1),
('20251005', 3.00, 15000.00, '20250903', '20250920', 'Выкуплен', 2, 2),
('20251010', 4.00, 7000.00, '20250905', NULL, 'Не выкуплен', 3, 3),
('20251015', 2.50, 25000.00, '20250907', '20250925', 'Выкуплен', 4, 4),
('20251020', 5.00, 12000.00, '20250909', NULL, 'Не выкуплен', 5, 5),
('20251025', 4.50, 30000.00, '20250911', '20250930', 'Выкуплен', 6, 6),
('20251030', 6.00, 4000.00, '20250913', NULL, 'Не выкуплен', 7, 7),
('20251101', 3.20, 18000.00, '20250915', '20250928', 'Выкуплен', 8, 8),
('20251105', 4.10, 9000.00, '20250917', NULL, 'Не выкуплен', 9, 9),
('20251110', 2.70, 22000.00, '20250919', '20250929', 'Выкуплен', 10, 10);

-- =======================
-- Таблица Product
-- =======================
CREATE TABLE Product (
    id_product INT PRIMARY KEY IDENTITY(1,1),
    valuation DECIMAL(15,2) NOT NULL,
    depreciation DECIMAL(5,2) NOT NULL,
    id_product_type INT NOT NULL,
    id_contract INT NOT NULL,
    FOREIGN KEY (id_product_type) REFERENCES ProductType(id_product_type),
    FOREIGN KEY (id_contract) REFERENCES Contract(id_contract)
);

INSERT INTO Product (valuation, depreciation, id_product_type, id_contract) VALUES
(5500.00, 10.00, 1, 1),
(17000.00, 5.00, 2, 2),
(7500.00, 20.00, 3, 3),
(26000.00, 8.00, 4, 4),
(13000.00, 15.00, 5, 5),
(31000.00, 12.00, 6, 6),
(4500.00, 30.00, 7, 7),
(20000.00, 7.00, 8, 8),
(9500.00, 25.00, 9, 9),
(23000.00, 18.00, 10, 10);

-- =======================
-- Таблица Material
-- =======================
CREATE TABLE Material (
    id_material INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL
);

INSERT INTO Material (name) VALUES
('Золото'),
('Серебро'),
('Пластик'),
('Стекло'),
('Алюминий'),
('Железо'),
('Медь'),
('Кожа'),
('Ткань'),
('Дерево');

-- =======================
-- Таблица ProductMaterial (M:N)
-- =======================
CREATE TABLE ProductMaterial (
    id_product INT NOT NULL,
    id_material INT NOT NULL,
    weight DECIMAL(5,2),
    PRIMARY KEY (id_product, id_material),
    FOREIGN KEY (id_product) REFERENCES Product(id_product),
    FOREIGN KEY (id_material) REFERENCES Material(id_material)
);

INSERT INTO ProductMaterial (id_product, id_material, weight) VALUES
(2, 1, 0.50),
(4, 1, 2.00),
(8, 2, 1.20),
(1, 3, 0.80),
(3, 3, 0.40),
(3, 4, 0.30),
(5, 5, 3.00),
(6, 6, 1.50),
(7, 7, 2.50),
(9, 9, 1.00);

-- =======================
-- Таблица Sale
-- =======================
CREATE TABLE Sale (
    id_sale INT PRIMARY KEY IDENTITY(1,1),
    price DECIMAL(15,2) NOT NULL,
    sale_date DATETIME NOT NULL,
    id_product INT NOT NULL,
    FOREIGN KEY (id_product) REFERENCES Product(id_product)
);

INSERT INTO Sale (price, sale_date, id_product) VALUES
(6000.00, '20250921', 1),
(18000.00, '20250922', 2),
(8000.00, '20250923', 3),
(27000.00, '20250924', 4),
(14000.00, '20250925', 5),
(32000.00, '20250926', 6),
(5000.00, '20250927', 7),
(21000.00, '20250928', 8),
(10000.00, '20250929', 9),
(24000.00, '20250930', 10);

