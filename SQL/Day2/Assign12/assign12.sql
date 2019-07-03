select trainername, courseName from feedback left join course_details on course_details.courseID = feedback.courseID left join trainer on feedback.trainerid = trainer.trainerid;

select trainername, count(courseID) from feedback join trainer on feedback.trainerid = trainer.trainerid group by courseID having count(courseID) > 1;

select trainer.trainerid, trainername, count(courseID) from feedback join trainer on trainer.trainerid = feedback.trainerid group by trainerid;

select trainer.trainerid, trainername, coursename, count(course_details.courseID) from feedback join course_details on course_details.courseid = feedback.courseID right join trainer on trainer.trainerid = feedback.trainerid  group by course_details.courseid;

select batchname, datediff(max(end_date), min(start_date)) from batch_schedule group by batchname;

select batch_schedule.courseID, coursename, feedback.trainerID, trainername from batch_schedule join feedback on batch_schedule.courseID = feedback.courseID join trainer on feedback.trainerid = trainer.trainerid join course_details on feedback.courseid = course_details.courseid where start_date = '2007-2-20' || end_date = '2007-2-20';

select trainerid, count(batchname), group_concat(distinct(batchname)) from feedback group by 1 having count(batchname) > 1;

select feedback.trainerid, trainername, count(feedback.trainerid) from feedback join trainer on feedback.trainerid = trainer.trainerid group by trainerid having count(*) = (select count(*) from course_details);