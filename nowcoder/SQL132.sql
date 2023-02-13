-- https://www.nowcoder.com/practice/203d0aed8928429a8978185d9a03babc?tpId=240&tqId=2183297&ru=%2Fpractice%2F5bc77e3a3c374ad6a92798f0ead4c744&qru=%2Fta%2Fsql-advanced%2Fquestion-ranking&sourceUrl=%2Fexam%2Foj%3Fpage%3D1%26tab%3DSQL%25E7%25AF%2587%26topicId%3D240
SELECT DISTINCT tid
	,count(DISTINCT uid) AS uv
	,count(uid) AS pv
FROM (
	SELECT exam_id AS tid
		,uid
	FROM exam_record
	
	UNION ALL
	
	SELECT question_id AS tid
		,uid
	FROM practice_record
	) AS t1
GROUP BY tid
ORDER BY left(tid, 2) DESC
	,uv DESC
	,pv DESC;
