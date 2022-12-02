create table admins (
    id INT PRIMARY key,
    name varchar(48) not null,
    email varchar(48),
    username varchar(48) not null,
    register_date DATETIME not null,
    password varchar(48) not null
);

desc admins;

create table bookings (
    b_id int primary key,
    -- FOREIGN KEY (r_id) REFERENCES rooms(r_id),
    r_id varchar(24),
    g_id int,
    b_status int not null,
    a_id int,
    st DATE,
    et date
);

desc bookings;

create table guests (
    g_id int primary key,
    g_name varchar(24),
    g_email varchar(24),
    g_count int,
    g_streetno varchar(24),
    g_city varchar(24),
    g_state varchar(24),
    g_country varchar(24),
    g_pincode varchar(24)
);

create table amenities (
    a_id int primary key,
    a_type int,
    a_status int,
    a_capacity int,
    a_title varchar(48),
    a_description text
);

create table rooms (
    r_id varchar(24) primary key,
    r_number int,
    r_type int,
    r_capacity int,
    r_status int
);

create table charges (
    code int primary key,
    type int,
    cost int
);

ALTER TABLE bookings
ADD FOREIGN KEY (r_id) REFERENCES rooms(r_id);

ALTER TABLE bookings
ADD FOREIGN KEY (g_id) REFERENCES guests(g_id);

ALTER TABLE bookings
ADD FOREIGN KEY (a_id) REFERENCES amenities(a_id);

insert into admins values (1, "Mohit", "www.mohit2004@gmail.com", 'mohit2004', CURRENT_TIMESTAMP, 'password');

select * from admins;

update admins set password="$5$rounds=535000$p0yjzK0JKgBgbQQu$22tMo1LrDXQRb9DOztP6gGMJUfGc9FuN0UDV1w4oNZA" where name="Mohit";

alter table admins modify password char(77);

desc guests;

insert into guests values (1, "Mohit", "mohit@gmail.com", 12, "Street-5", "Neemrana", "Rajasthan", "India", "301705");

select * from guests;