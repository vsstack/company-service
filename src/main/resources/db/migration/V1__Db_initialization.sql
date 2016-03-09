
create table company (
    id integer generated by default as identity,
    address varchar(255),
    city varchar(255),
    company_id varchar(255),
    country varchar(255),
    email varchar(255),
    name varchar(255),
    phone_number varchar(255),
    primary key (id)
);

alter table company add constraint UK_niu8sfil2gxywcru9ah3r4ec5 unique (name);

create table beneficial_owner (
    id integer generated by default as identity,
    name varchar(255),
    company_id integer not null,
    primary key (id)
);


alter table beneficial_owner add constraint FK_abecytsm12v5045bu9s18bdv8 foreign key (company_id) references company;