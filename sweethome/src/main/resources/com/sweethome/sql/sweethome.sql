create table product(
   productnum int auto_increment primary key,
   productname varchar(300) not null,
   productamount int,
   productcontents varchar(300),
   productphoto varchar(300)
);

create table user(
   userid varchar(300) primary key,
   userpw varchar(300) not null,
   username varchar(300) not null,
   usergender enum('M','W'),
   zipcode varchar(50),
   useraddr varchar(1000),
   useraddrdetail varchar(1000),
   useraddretc varchar(1000),
   userbirth varchar(100) not null,
   userphone varchar(300) not null,
   userphoto varchar(300) default "basicprofile.jpg"
);

create table shoppinglist(
   userid varchar(300),
   productnum int,
   foreign key(userid) references user(userid),
   foreign key(productnum) references product(productnum)
);

   create table m_board(
   boardnum int primary key auto_increment,
   boardtitle varchar(300),
   boardcontents varchar(300),
   regdate datetime default now(),
   updatedate datetime,
   readcount int default 0,
   userid varchar(300),
   foreign key(userid) references user(userid)
);

create table t_reply(
   replynum int primary key auto_increment,
   replycontents varchar(1000) not null,
   regdate datetime default now(),
   updatechk enum('o','x') default 'x',
   userid varchar(300),
   boardnum bigint
);

create table qna(
   qnanum int primary key auto_increment,
   userid varchar(300),
   qnatitle varchar(300),
   qnacontents varchar(300),
   qnacheck varchar(10) default 'X',
   regdate datetime default now(),
   foreign key(userid) references user(userid)
);

create table reservation(
   reservnum int auto_increment primary key,
   userid varchar(300),
   reservtime datetime,
   foreign key(userid) references user(userid)
);