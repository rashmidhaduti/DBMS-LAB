drop table student;
create table student(regno varchar2(20),
                     name varchar2(20),
                     major varchar2(20),
                     bdate date,
                     primary key(regno)); 
create table course(course_id int,
                    cname varchar2(20),
                    dept varchar2(20),
                    primary key(course_id));
create table text(isbn int,
                  book_title varchar2(20),
                  publisher varchar2(20),
                  author varchar2(20),
                  primary key(isbn));
create table book_adoption(course_id int,
                           isbn int,
                           sem int,
                           primary key(course_id,isbn),
                           foreign key(course_id)references course(course_id)on delete cascade,
                           foreign key(isbn) references text(isbn)on delete cascade);
create table enroll(regno varchar2(20),
                    course_id int,
                    sem int,
                    marks int,
                    primary key(regno,course_id),
                    foreign key(course_id)references course(course_id)on delete cascade,
                    foreign key(regno)references student(regno)on delete cascade);
insert into student values('&regno','&name','&major','&bdate');
select *from student;
insert into course values(&course_id,'&cname','&dept');
select *from course;
insert into text values(&isbn,'&book_title','&publisher','&author');
select *from book_adoption;
insert into book_adoption values(&course_id,&isbn,&sem);
insert into enroll values('&regno',&course_id,&sem,&marks);
select *from enroll;
