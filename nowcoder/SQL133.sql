select uid, activity
from (select uid, if(min(score)>=85,"activity1",null) as activity
from (select b.uid,b.score,a.difficulty, if(timediff(b.submit_time,b.start_time)/a.duration < 50,1,null) as half_time
from exam_record as b
left join examination_info as a
on a.exam_id = b.exam_id
) as t1
group by uid
union all
select uid, "activity2" as activity
from (select b.uid,b.score,a.difficulty, if(timediff(b.submit_time,b.start_time)/a.duration < 50,1,null) as half_time
from exam_record as b
left join examination_info as a
on a.exam_id = b.exam_id
where timediff(b.submit_time,b.start_time)/a.duration < 50 and difficulty = 'hard' and score > 80
) as t1
group by uid) as t2
where activity is not null
order by uid;