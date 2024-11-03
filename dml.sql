create database db;

CREATE TABLE programmers
(
    id                   serial PRIMARY KEY,
    first_name           varchar(50)         NOT NULL,
    last_name            varchar(50)         NOT NULL,
    date_of_birth        date,
    gender               varchar(10),
    email                varchar(100) UNIQUE NOT NULL,
    programming_language varchar(50)         NOT NULL,
    experience           int,
    salary               numeric,
    phone_number         varchar(13)
);

INSERT INTO programmers (first_name, last_name, email, gender, date_of_birth, programming_language, experience, salary, phone_number)
VALUES
    ('Aime', 'Seawright', 'aseawright0@ask.com', 'Female', '2021-02-28', 'Java', 15, 66720, '216-294-6100'),
    ('Perkin', 'Danbye', 'pdanbye1@apple.com', 'Male', '2005-03-07', 'Ruby', 4, 56703, '475-500-1736'),
    ('Deloria', 'Mulvey', 'dmulvey2@google.it', 'Female', '2001-11-24', 'Python', 9, 73089, '269-134-8777'),
    ('Ruthy', 'Matyukon', 'rmatyukon3@51.la', 'Female', '2004-04-12', 'Go', 20, 64418, '404-215-5812'),
    ('Rubina', 'Michelmore', 'rmichelmore4@epa.gov', 'Female', '2020-04-21', 'Java', 6, 86017, '946-805-2535'),
    ('Annamarie', 'Mellhuish', 'amellhuish5@ihg.com', 'Female', '2019-08-02', 'JavaScript', 10, 74855, '775-933-9797'),
    ('Lise', 'Aberkirdo', 'laberkirdo6@msu.edu', 'Female', '2017-07-14', 'JavaScript', 15, 98698, '885-852-6973'),
    ('Logan', 'McCaw', 'lmccaw7@arizona.edu', 'Male', '2014-01-29', 'Java', 16, 63010, '636-184-3772'),
    ('Stan', 'Godbald', 'sgodbald8@cloudflare.com', 'Male', '2024-08-10', 'C#', 8, 56127, '155-948-4902'),
    ('Jobye', 'Nears', 'jnears9@youtube.com', 'Female', '2001-06-17', 'JavaScript', 14, 66020, '566-276-9106'),
    ('Charmain', 'Melbourn', 'cmelbourna@plala.or.jp', 'Female', '2010-07-23', 'JavaScript', 15, 80838, '920-531-1265'),
    ('Bradly', 'Fishlee', 'bfishleeb@booking.com', 'Male', '2002-08-06', 'Ruby', 16, 71272, '928-195-9960'),
    ('Elsbeth', 'Schafer', 'eschaferc@ucla.edu', 'Female', '2010-01-13', 'Ruby', 15, 74673, '550-421-3298'),
    ('Audry', 'Bocking', 'abockingd@plala.or.jp', 'Female', '1998-06-13', 'Ruby', 6, 56786, '459-902-0875'),
    ('Alison', 'Debenham', 'adebenhame@uiuc.edu', 'Female', '2002-10-28', 'JavaScript', 8, 95460, '760-774-4788'),
    ('Timotheus', 'Teodoro', 'tteodorof@buzzfeed.com', 'Male', '2009-08-27', 'C#', 15, 85663, '654-469-8767'),
    ('Emmanuel', 'Bealing', 'ebealingg@webeden.co.uk', 'Male', '2003-07-29', 'Go', 6, 63009, '255-894-8956'),
    ('Ruprecht', 'Fenich', 'rfenichh@google.ru', 'Male', '2021-07-15', 'Java', 9, 84328, '459-693-1967'),
    ('Maryann', 'O'' Cuolahan', 'mocuolahani@sciencedirect.com', 'Female', '2009-03-29', 'JavaScript', 8, 88240, '483-618-1464'),
    ('Ava', 'Calton', 'acaltonj@mtv.com', 'Female', '2011-02-08', 'Go', 19, 81093, '734-586-3302'),
    ('Romona', 'Barus', 'rbarusk@salon.com', 'Female', '2011-11-17', 'Python', 6, 89067, '549-876-6386'),
    ('Lilah', 'Moral', 'lmorall@ucoz.ru', 'Female', '1992-03-02', 'C#', 3, 98666, '914-816-6233'),
    ('Ethelin', 'Cathie', 'ecathiem@senate.gov', 'Male', '2000-09-04', 'Python', 1, 94861, '696-478-6209'),
    ('Frank', 'Gabrieli', 'fgabrielin@aboutads.info', 'Male', '2018-03-14', 'Ruby', 14, 73826, '332-907-1198'),
    ('Donetta', 'Samwyse', 'dsamwyseo@bbb.org', 'Female', '2017-04-01', 'Ruby', 8, 94799, '392-543-7977'),
    ('Trudey', 'Edlington', 'tedlingtonp@xing.com', 'Female', '2006-02-22', 'JavaScript', 5, 96396, '493-327-4558'),
    ('Morissa', 'Crier', 'mcrierq@webmd.com', 'Female', '2012-04-13', 'Ruby', 14, 82128, '825-551-4116'),
    ('Lucienne', 'Skahill', 'lskahillr@aol.com', 'Female', '2013-10-26', 'Go', 5, 50958, '543-816-7651'),
    ('Tiffanie', 'Blanpein', 'tblanpeins@merriam-webster.com', 'Female', '2018-12-01', 'JavaScript', 4, 70353, '387-254-8367'),
    ('Darell', 'Exeter', 'dexetert@va.gov', 'Female', '2002-04-20', 'Python', 19, 50162, '772-127-9093'),
    ('Rainer', 'Dollin', 'rdollinu@cbc.ca', 'Male', '2022-11-19', 'C#', 11, 62371, '704-279-0737'),
    ('Loutitia', 'Brunon', 'lbrunonv@flavors.me', 'Female', '2013-08-20', 'Java', 18, 53959, '594-688-8332'),
    ('Rubie', 'Simonard', 'rsimonardw@cpanel.net', 'Female', '2015-03-25', 'Go', 13, 51928, '321-110-5377'),
    ('Adolph', 'MacGregor', 'amacgregorx@biblegateway.com', 'Male', '2005-03-27', 'JavaScript', 14, 56559, '370-988-5037'),
    ('Hershel', 'Yearby', 'hyearbyy@taobao.com', 'Male', '2018-06-28', 'C#', 11, 93354, '544-133-0594'),
    ('Amye', 'Feaster', 'afeasterz@imageshack.us', 'Female', '1994-06-24', 'Ruby', 8, 63846, '780-735-5078'),
    ('Elliott', 'Tommen', 'etommen10@hud.gov', 'Male', '1993-07-02', 'JavaScript', 15, 99245, '687-885-0346'),
    ('Hans', 'Tight', 'htight11@baidu.com', 'Male', '2018-12-03', 'Python', 9, 70139, '969-942-6772'),
    ('Nani', 'Rookwell', 'nrookwell12@seattletimes.com', 'Female', '1992-03-23', 'Python', 13, 62534, '601-547-8815'),
    ('Carolann', 'Espinho', 'cespinho13@noaa.gov', 'Female', '2003-07-24', 'Python', 7, 59481, '474-703-2771'),
    ('Pebrook', 'Treslove', 'ptreslove14@craigslist.org', 'Male', '2010-01-15', 'Ruby', 1, 88784, '112-393-5053'),
    ('Erik', 'Haldene', 'ehaldene15@adobe.com', 'Male', '2018-06-27', 'C#', 20, 73676, '659-697-2090'),
    ('Silas', 'Finlry', 'sfinlry16@stanford.edu', 'Male', '1992-10-08', 'C#', 16, 97686, '241-577-0130'),
    ('Patsy', 'Basili', 'pbasili17@e-recht24.de', 'Male', '2024-05-06', 'Java', 12, 52016, '924-838-9461'),
    ('Cinderella', 'McFeat', 'cmcfeat18@topsy.com', 'Female', '1995-11-21', 'Ruby', 3, 70718, '907-903-9793'),
    ('Adelind', 'Banaszczyk', 'abanaszczyk19@fda.gov', 'Female', '1997-08-18', 'Python', 16, 92570, '577-801-6110'),
    ('Sal', 'Garred', 'sgarred1a@friendfeed.com', 'Male', '1995-01-24', 'JavaScript', 18, 89575, '993-832-8807'),
    ('Hank', 'Vernalls', 'hvernalls1b@vkontakte.ru', 'Male', '1995-11-15', 'JavaScript', 6, 98329, '391-963-3365'),
    ('Carita', 'Reavey', 'creavey1c@dagondesign.com', 'Female', '2002-06-27', 'JavaScript', 13, 53268, '240-684-0831'),
    ('Lewes', 'Cellone', 'lcellone1d@mlb.com', 'Male', '2003-09-06', 'Python', 14, 79688, '866-696-5765'),
    ('Andreas', 'Rawlyns', 'arawlyns1e@over-blog.com', 'Male', '2017-06-17', 'C#', 15, 62046, '494-919-7096'),
    ('Chery', 'Fantin', 'cfantin1f@umich.edu', 'Female', '1994-11-01', 'JavaScript', 5, 92326, '733-772-2005'),
    ('Fielding', 'Yeardsley', 'fyeardsley1g@npr.org', 'Male', '2017-02-01', 'JavaScript', 10, 76422, '924-426-5752'),
    ('Dalli', 'Souness', 'dsouness1h@java.com', 'Male', '2010-10-08', 'JavaScript', 3, 97542, '397-273-7375'),
    ('Shurlocke', 'Bodiam', 'sbodiam1i@github.io', 'Male', '2006-11-10', 'Python', 15, 57290, '948-465-0371'),
    ('Job', 'Moncreif', 'jmoncreif1j@amazon.co.jp', 'Male', '2017-07-07', 'Go', 14, 55135, '312-733-4711'),
    ('Kristy', 'Muskett', 'kmuskett1k@google.pl', 'Female', '2007-01-10', 'Go', 20, 91473, '948-512-4524'),
    ('Alva', 'Deeth', 'adeeth1l@ifeng.com', 'Male', '2009-10-14', 'Java', 4, 84623, '343-295-8231'),
    ('Magdaia', 'Sirett', 'msirett1m@sakura.ne.jp', 'Female', '2003-04-04', 'JavaScript', 19, 67782, '299-840-9687'),
    ('Dory', 'Newgrosh', 'dnewgrosh1n@ebay.com', 'Male', '2008-11-23', 'Java', 9, 84467, '408-391-7992'),
    ('Alfonse', 'Fattori', 'afattori1o@discuz.net', 'Male', '2011-10-20', 'Java', 13, 56605, '241-987-7755'),
    ('Consolata', 'Robel', 'crobel1p@163.com', 'Female', '2007-01-06', 'JavaScript', 15, 74482, '934-663-2827'),
    ('Dylan', 'Cockerill', 'dcockerill1q@examiner.com', 'Male', '1994-08-27', 'Go', 17, 84013, '464-528-5786'),
    ('Nerty', 'Elvidge', 'nelvidge1r@statcounter.com', 'Female', '1993-09-30', 'Go', 13, 99039, '458-906-3596'),
    ('Britt', 'Eastwell', 'beastwell1s@virginia.edu', 'Female', '2014-12-01', 'Python', 13, 86772, '738-253-7615'),
    ('Betteann', 'Shimmings', 'bshimmings1t@wufoo.com', 'Female', '1991-10-11', 'Ruby', 1, 64109, '815-478-6655'),
    ('Basilio', 'Lyard', 'blyard1u@engadget.com', 'Male', '1999-01-30', 'Java', 1, 74473, '141-787-5673'),
    ('Leanor', 'O''Hengerty', 'lohengerty1v@google.com', 'Female', '2017-03-03', 'Go', 12, 72064, '918-743-5040'),
    ('Letizia', 'Seakin', 'lseakin1w@privacy.gov.au', 'Female', '2004-02-23', 'Ruby', 15, 59593, '459-935-5930');

select first_name as name, last_name, salary * 12 as annual_salary from programmers;

select concat(first_name, ' ', last_name) as full_name, experience from programmers order by experience desc;

select distinct programming_language from programmers;

select first_name as name, last_name, experience from programmers where experience >= 3;

select * from programmers where programming_language ilike 'Java' and experience >= 2;

select * from programmers limit 5;

select * from programmers offset 6;

select * from programmers offset 6 limit 5;

select * from programmers offset 5 fetch first 5 row only;

select * from programmers where programming_language in ('Java', 'C#');

select * from programmers where programming_language not in ('Java', 'C#');

select * from programmers where experience between 4 and 6;

select * from programmers where first_name ilike 'd%';

select gender, count(*) from programmers group by gender;

select gender, count(*) from programmers group by gender having count(*) > 32;

select count(*) as total_programmers from programmers;

select max(experience) as max_experience, min(experience) from programmers;

select round(avg(salary), 2) as rounded_average_salary from programmers;

select sum(salary) as total_slary from programmers;

select coalesce(experience, 0) as cleaned_experience from programmers;

delete from programmers where programming_language = 'C#';

update programmers set programming_language = 'python' where experience < 2;

SELECT NOW() AS current_date_time;

SELECT NOW() - INTERVAL '1 year' AS one_year_ago;

SELECT
    EXTRACT(year FROM NOW()) AS current_year,
    EXTRACT(month FROM NOW()) AS current_month,
    EXTRACT(day FROM NOW()) AS current_day,
    EXTRACT(dow FROM NOW()) AS day_of_week,
    EXTRACT(century FROM NOW()) AS current_century;