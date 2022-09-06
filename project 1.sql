CREATE TABLE student_details (
    id int auto_increment,
    student_name varchar(25) Not Null,
    aadhar_card_number int NOT NULL,
    parent_name varchar(45) NOT NULL,
    phone_number varchar(45) NOT NULL,
    class int NOT NULL,
    section varchar(45) NOT NULL,
    approximate_mark_of_mathematics_in_all_exams int NOT NULL,
    approximate_mark_of_science_in_all_exams int NOT NULL,
    approximate_mark_of_social_in_all_exams int NOT NULL,
    language_mark int NOT NULL,
    quarterly_exam_statement varchar(45) NOT NULL,
    halfyerly_exam_statement varchar(45) NOT NULL,
    annual_exam_statement varchar(45) NOT NULL,
    PRIMARY KEY (id),
  );
  
  # module 1
  
  INSERT INTO student_details(id,student_name,aadhar_card_number,parent_name,phone_number,class,section,approximate_mark_of_mathematics_in_all_exams,approximate_mark_of_science_in_all_exams,approximate_mark_of_social_in_all_exams,language_mark,quarterly_exam_statement,halfyerly_exam_statement,annual_exam_statement) VALUES ('1','Rose','2342','Rock','3759','10','A','80','78','76','90','pass','pass','pass');
  INSERT INTO student_details(id,student_name,aadhar_card_number,parent_name,phone_number,class,section,approximate_mark_of_mathematics_in_all_exams,approximate_mark_of_science_in_all_exams,approximate_mark_of_social_in_all_exams,language_mark,quarterly_exam_statement,halfyerly_exam_statement,annual_exam_statement) VALUES ('2','Tom','4565','Steve','7356','10','A','90','79','86','91','pass','pass','pass');
  INSERT INTO student_details(id,student_name,aadhar_card_number,parent_name,phone_number,class,section,approximate_mark_of_mathematics_in_all_exams,approximate_mark_of_science_in_all_exams,approximate_mark_of_social_in_all_exams,language_mark,quarterly_exam_statement,halfyerly_exam_statement,annual_exam_statement) VALUES ('3','Evelyne','3654','Peter','7537','10','A','98','96','89','92','pass','pass','pass');
  INSERT INTO student_details(id,student_name,aadhar_card_number,parent_name,phone_number,class,section,approximate_mark_of_mathematics_in_all_exams,approximate_mark_of_science_in_all_exams,approximate_mark_of_social_in_all_exams,language_mark,quarterly_exam_statement,halfyerly_exam_statement,annual_exam_statement) VALUES ('4','Diasy','2784','Trever','3759','10','A','20','18','16','21','fail','fail','fail');
  INSERT INTO student_details(id,student_name,aadhar_card_number,parent_name,phone_number,class,section,approximate_mark_of_mathematics_in_all_exams,approximate_mark_of_science_in_all_exams,approximate_mark_of_social_in_all_exams,language_mark,quarterly_exam_statement,halfyerly_exam_statement,annual_exam_statement) VALUES ('5','Sarah','2375','Daniel','8739','10','A','23','17','23','19','fail','fail','fail');
  
  select * from student_details;
  
  update student_details set class=9 where id=1;
  delete from student_details where id=2;
 
  select * from student_details;
  
  # module 2
  
  update student_details set approximate_mark_of_mathematics_in_all_exams=25 where id=5;
  
  select * from student_details;
  
  select * from student_details where quarterly_exam_statement='fail';
  
  
  