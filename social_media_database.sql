create database if not exists socialMedia; 

use socialMedia;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

CREATE TABLE users (
        user_name varchar(25) not null,
        email varchar(50) not null,
        password varchar(15) not null,
        primary key(user_name)
        );
        
CREATE TABLE posts (
		post_id int not null auto_increment,
        user_name varchar(25) not null,
        date_posted datetime default current_timestamp,
        post_content varchar(255),
        primary key(post_id),
        foreign key (user_name) references users(user_name)
);

CREATE TABLE comments (
		comment_id int not null auto_increment,
        post_id int not null,
        user_name varchar(25) not null,
		comments_content varchar(150) not null,
		date_commented datetime default current_timestamp,
        primary key(comment_id),
        foreign key (post_id) references posts(post_id),
        foreign key (user_name) references users(user_name)
);