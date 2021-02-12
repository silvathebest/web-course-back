create table Customer(
    id integer NOT NULL PRIMARY KEY,
    email character varying(120) NOT NULL,
    name character varying(120),
    phone character varying(120),
    nickname character varying(120) NOT NULL
);

CREATE SEQUENCE Customer_Seq START 1;

alter table Customer alter column ID set default nextval('Customer_Seq');

CREATE TABLE Project (
    id integer NOT NULL PRIMARY KEY,
    name character varying(255) NOT NULL,
    description character varying(255),
    createdate time without time zone,
);

CREATE SEQUENCE Project_Seq START 1;

alter table Project alter column ID set default nextval('Project_Seq');

create table User_Project(
    CustomerID integer not null REFERENCES Customer (ID),
    ProjectID integer not null REFERENCES project (ID),
    IsHost bool not null
);
