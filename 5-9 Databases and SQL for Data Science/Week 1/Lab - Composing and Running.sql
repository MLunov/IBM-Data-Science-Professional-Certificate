drop table INSTRUCTOR;

create table INSTRUCTOR (
    ins_id integer PRIMARY KEY NOT NULL,
    lastname varchar(15),
    firstname varchar(15),
    city varchar(15),
    country char(2)
    );
    
insert into INSTRUCTOR
(ins_id, lastname, firstname, city, country)
values
(1, 'Ahuja', 'Rav', 'Toronto', 'CA') ;

insert into INSTRUCTOR
-- (ins_id, lastname, firstname, city, country)
values
(2, 'Chong', 'Raul', 'Toronto', 'CA') ,
(3, 'Vasudevan', 'Hima', 'Chicago', 'US') ;

select * from INSTRUCTOR;

select firstname, lastname, country from INSTRUCTOR where city = 'Toronto';

update INSTRUCTOR
set city = 'Markham'
where ins_id = 1;

delete from INSTRUCTOR
where ins_id = 2;

select * from INSTRUCTOR;

-- this the end