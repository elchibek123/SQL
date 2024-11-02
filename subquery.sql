-- Database
create database subquery;

-- Countries table
create table if not exists countries
(
    id   serial primary key,
    name varchar(255) not null,
    area float
);

-- City table
create table if not exists city
(
    id         serial primary key,
    name       varchar(255) not null,
    street     varchar(255),
    country_id integer references countries (id)
);

-- Developers table
create table if not exists developers
(
    id                   serial primary key,
    first_name           varchar(255) not null,
    last_name            varchar(255),
    email                varchar(255) unique,
    programming_language varchar(255) not null,
    birth_date           date,
    salary               decimal(10, 2),
    address_id           integer references city (id)
);

-- Companies table
create table if not exists companies
(
    id         serial primary key,
    name       varchar(255) not null,
    address_id integer references city (id)
);

-- Projects table
create table if not exists projects
(
    id          serial primary key,
    title       varchar(255) not null,
    description text,
    dev_id      integer references developers (id),
    company_id  integer references companies (id)
);

---        DATA       ---
insert into countries (name, area)
values ('USA', 9833520),
       ('Canada', 9984670),
       ('Germany', 357022),
       ('France', 643801),
       ('India', 3287263),
       ('Brazil', 8515767),
       ('Russia', 17098242),
       ('China', 9596961),
       ('Australia', 7692024),
       ('Japan', 377975);

insert into city (name, street, country_id)
values ('New York', '5th Avenue', 1),
       ('Los Angeles', 'Sunset Boulevard', 1),
       ('Toronto', 'King Street', 2),
       ('Vancouver', 'Granville Street', 2),
       ('Berlin', 'Unter den Linden', 3),
       ('Munich', 'Maximilianstraße', 3),
       ('Paris', 'Champs-Élysées', 4),
       ('Marseille', 'La Canebière', 4),
       ('Mumbai', 'Marine Drive', 5),
       ('Delhi', 'Rajpath', 5);


insert into companies (name, address_id)
values ('TechCorp', 1),
       ('InnovateX', 2),
       ('Maple Solutions', 3),
       ('Nordic Ventures', 4),
       ('TechStack', 5),
       ('FutureSoft', 6),
       ('ByteBridge', 7),
       ('Visionary Systems', 8),
       ('InfoHub', 9),
       ('CoreX', 10);


insert into developers (first_name, last_name, email, programming_language, birth_date, salary, address_id)
values ('John', 'Doe', 'john.doe@example.com', 'Java', '1990-04-25', 85000.00, 1),
       ('Jane', 'Smith', 'jane.smith@example.com', 'Python', '1988-08-17', 90000.00, 2),
       ('Carlos', 'Santos', 'carlos.santos@example.com', 'JavaScript', '1992-03-12', 78000.00, 3),
       ('Alice', 'Brown', 'alice.brown@example.com', 'C#', '1994-11-05', 88000.00, 4),
       ('David', 'Lee', 'david.lee@example.com', 'Ruby', '1985-02-14', 93000.00, 5),
       ('Samantha', 'Green', 'samantha.green@example.com', 'PHP', '1989-06-30', 76000.00, 6),
       ('Michael', 'Chen', 'michael.chen@example.com', 'Go', '1991-10-20', 87000.00, 7),
       ('Linda', 'Johnson', 'linda.johnson@example.com', 'Python', '1993-12-19', 91000.00, 8),
       ('Robert', 'Clark', 'robert.clark@example.com', 'Java', '1990-07-11', 85000.00, 9),
       ('Emily', 'Davis', 'emily.davis@example.com', 'C++', '1995-01-09', 78000.00, 10);


insert into projects (title, description, dev_id, company_id)
values ('Project Alpha', 'Development of an alpha version of the software', 1, 1),
       ('Project Beta', 'Creation of the beta version for testing', 2, 2),
       ('Cloud Migration', 'Migrating services to the cloud', 3, 3),
       ('Data Analytics', 'Building data analytics tools', 4, 4),
       ('Mobile App', 'Development of a cross-platform mobile app', 5, 5),
       ('E-commerce Website', 'Creating a full-fledged e-commerce platform', 6, 6),
       ('AI Development', 'Research and development of AI models', 7, 7),
       ('API Integration', 'Integrating APIs for multiple services', 8, 8),
       ('Blockchain Project', 'Implementing a blockchain-based solution', 9, 9),
       ('Cybersecurity', 'Enhancing security protocols', 10, 10);



select first_name, last_name, round(salary)
from developers
where salary = (select max(salary) from developers);
select first_name, last_name, salary
from developers
order by salary desc
limit 1;

select first_name, last_name, programming_language, p.id, p.title
from developers d
         join projects p on d.id = p.dev_id
where p.title = 'Project Alpha';
select *
from developers
where id = (select p.dev_id from projects p where p.title = 'Project Beta');

select first_name, last_name, c.name
from developers d
         join city c on c.id = d.address_id
where c.name ilike 'New York';
select *
from developers d
where d.address_id = (select c.id from city c where name = 'New York');

select *
from developers
where salary > (select avg(salary) from developers);

select p.id         as project_id,
       p.title      as project_name,
       d.id         as developer_id,
       d.first_name as developer_name,
       d.programming_language
from projects p
         join developers d on p.dev_id = d.id
where d.programming_language = 'Python';
select *
from projects p
where p.dev_id in (select d.id from developers d where d.programming_language = 'Python');

select *
from developers d
where d.address_id in
      (select c.id from city c where c.country_id in (select country.id from countries country where area > 1000000));
select d.first_name, d.last_name, c2.name as country_name, c2.area as country_area
from developers d
         join city c on c.id = d.address_id
         join countries c2 on c2.id = c.country_id
where c2.area > 1000000;

alter table projects
    add column created_at date;

select *
from projects p
         join developers d on d.id = p.dev_id
where p.created_at in (select max(p.created_at) from projects p group by p.dev_id);

select *
from developers d1
where salary > (select AVG(salary) from developers d2 where d2.address_id = d1.address_id);

select *
from countries c1
where c1.id in
      (select c2.country_id from city c2 where c2.id in (select d.address_id from developers d where salary > 90000));
select countries.name as country_name, d.salary
from countries
         join city c on countries.id = c.country_id
         join developers d on c.id = d.address_id
where salary > 90000;

select d.first_name as developer_name, p.title as project_name
from developers d
         join projects p on d.id = p.dev_id;

select *
from companies c
         full join projects p on c.id = p.company_id;

select *
from projects p
         left join companies c on c.id = p.company_id;

select d.first_name, c.name
from developers d
         join city c on c.id = d.address_id;

select d.first_name, c.name as city_name, c2.name as country_name
from city c
         left join developers d on c.id = d.address_id
         join countries c2 on c2.id = c.country_id;