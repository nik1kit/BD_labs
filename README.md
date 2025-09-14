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
<img src="https://github.com/nik1kit/BD_labs/blob/main/charts/photo_2025-09-14_14-30-01.jpg" width="3000" height="3000"/>
[Назад](#content) 

  
