create database movies4;
use movies4;
create table myuser(
 userId int primary key auto_increment,
 userName varchar(45),
 password varchar(45),
 role varchar(45)
);

create table theatre(
  theatreId int primary key auto_increment,
  theatreName varchar(45)
);

create table movie (
movieId int primary key auto_increment,
movieName varchar(45),
noOfTickets int ,
theatreId int,
image LONGBLOB,
foreign key (theatreId) references theatre(theatreId)
);

create table booking(
id int primary key auto_increment,
bookingDate date,
theatre_id int,
movie_id int,
customer_id int,
tickets int,
seatType varchar(45),
 foreign key (theatre_id) references theatre(theatreId),
 foreign key (movie_id) references movie(movieId),
 foreign key (customer_id) references myuser(userId)
);

select * from movie;
select * from theatre;
select * from myuser;
select * from booking;