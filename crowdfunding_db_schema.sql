create table category(
	category_id varchar(10) primary key not null,
	category varchar(30) not null
);

create table subcategory(
	subcategory_id varchar(30) primary key not null,
	subcategory varchar(30) not null
);

create table contacts(
	contact_id int primary key not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(50) not null
);

create table campaign(
	cf_id int not null,
	contact_id int not null,
	foreign key (contact_id)
	references contacts(contact_id),
	company_name varchar(100) not null,
	description varchar(100) not null,
	goal numeric(10,2) not null,
	pledged numeric(10,2) not null,
	outcome varchar(30) not null,
	backers_count int not null,
	country varchar(5) not null,
	currency varchar(5) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(10) not null,
	foreign key (category_id)
	references category(category_id),
	subcategory_id varchar(30) not null,
	foreign key (subcategory_id)
	references subcategory(subcategory_id)
);


