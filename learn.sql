mysql -h localhost -u root -p;
create user 'cbuser'@'localhost' identified by 'cbpass';
grant all on  user 'cbuser'@'localhost';

select now();
show full columns from table_name;

create database database_name;
use database_name;

create table table_name (column_1 type, column_2 type, column_3 type);
insert into table_name (column_1, column_2, column_3) values(value1, value2, value3);

select * from table_name;
-- to show all the records in that table

@var_name := value;
select @var_name;

set @add_five := 9+5; or set @add_five = 9+5;
select @add_five; -- 14

-- Connecting to databases using general purpose programming languages utilising an API;
show variables;
select version();


--- creating a table

create table table_name(
    id int unsigned auto_increment not null,
    name varchar(20) not null,
    birth date,
    color enum('blue', 'red', 'green', 'brown', 'black', 'white'),
    foods set('luer', 'burrito', 'eggroll', 'fadge'),
    cats int,
    primary key (id)
)