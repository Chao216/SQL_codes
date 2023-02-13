select uid, round(avg(if(submit_time is null,0,score))) as avg_score, round(avg(if(submit_time is null, duration, timestampdiff(minute,start_time, submit_time))),1) as avg_time_took
from (select c.uid, c.exam_id,c.start_time,c.submit_time,c.score, b.tag,b.difficulty,b.duration,a.level
from exam_record as c
left join examination_info as b
on c.exam_id = b.exam_id
left join user_info as a
on c.uid = a.uid
where a.level = 0 and b.difficulty = "hard") as t1
group by uid;