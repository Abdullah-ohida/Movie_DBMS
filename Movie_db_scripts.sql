create database Movie;
use Movie;

create table Actor(
	act_id integer auto_increment not null,
    act_fname varchar(20) not null,
    act_lname varchar(20) not null,
    act_gender varchar(45) not null,
    constraint primary key(act_id)
);

create table Director(
	dir_id integer not null,
    constraint primary key(dir_id),
    dir_fname varchar(45) not null,
    dir_lname varchar(45) not null
);


create table Movie(
	mov_id integer not null,
    mov_title varchar(50) not null,
    mov_year integer not null,
    mov_time integer not null,
    mov_lang varchar(50) not null,
    mov_dt_rel date null,
    mov_rel_country varchar(5) not null,
    constraint movie_pk primary key(mov_id)
);

create table Reviewer(
	rev_id integer auto_increment not null,
    rev_name varchar(30) null,
    constraint primary key(rev_id)
);

create table Genres(
	gen_id integer auto_increment not null,
    gen_title varchar(20) not null,
    constraint primary key(gen_id)
);

create table Rating(
	mov_id_fk integer not null,
    rev_id_fk  integer not null,
    rev_star integer null,
    num_o_rating integer null,
    foreign key(mov_id_fk) references Movie(mov_id),
    foreign key(rev_id_fk) references Reviewer(rev_id)
);

create table Movie_cast(
	act_id_fk integer not null,
    mov_id_fk  integer not null,
    role  varchar(30) not null,
    foreign key(act_id_fk) references Actor(act_id),
    foreign key(mov_id_fk) references Movie(mov_id)
);

create table Movie_direction(
	dir_id_fk integer not null,
    mov_id_fk  integer not null,
    foreign key(dir_id_fk) references Director(dir_id),
    foreign key(mov_id_fk) references Movie(mov_id)
);

create table Movie_genres(
	mov_id_fk  integer not null,
	gen_id_fk integer not null,
    foreign key(mov_id_fk) references Movie(mov_id),
	foreign key(gen_id_fk) references Genres(gen_id)
);











