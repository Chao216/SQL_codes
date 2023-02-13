-- https://www.nowcoder.com/practice/5b58e89556dc4153a79d8cf8c08ba499?tpId=240&tqId=2183023&ru=/exam/oj&qru=/ta/sql-advanced/question-ranking&sourceUrl=%2Fexam%2Foj%3Fpage%3D1%26tab%3DSQL%25E7%25AF%2587%26topicId%3D240

SELECT exam_id
	,count(DISTINCT uid) AS uv
	,round(avg(score), 1) AS avg_score
FROM (
	SELECT c.exam_id
		,c.uid
		,c.score
		,b.tag
		,a.LEVEL
	FROM exam_record AS c
	LEFT JOIN examination_info AS b ON c.exam_id = b.exam_id
	LEFT JOIN user_info AS a ON c.uid = a.uid
	WHERE b.tag = "SQL"
		AND a.LEVEL > 5
	) AS t1
GROUP BY exam_id
ORDER BY uv DESC
	,avg_score ASC;
