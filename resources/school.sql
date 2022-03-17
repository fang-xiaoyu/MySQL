drop table if exists t_class;
				create table t_class(
					classno int,
					classname int,
					primary key (classno)
				);
				insert into t_class(classno, classname) values (1, 11);
				insert into t_class(classno, classname) values(2, 22);
				
				drop table if exists t_student;
				create table t_student(
					studentno int primary key auto_increment,
					sname varchar(255),
					classno int,
foreign key(classno) references t_class(classno)  
				);
				insert into t_student(sname, classno) values ('123', 1);
				select * from t_class;
				select * from t_student;	
