-- https://www.nowcoder.com/practice/5bc77e3a3c374ad6a92798f0ead4c744?tpId=240&tqId=2183024&ru=%2Fpractice%2F5b58e89556dc4153a79d8cf8c08ba499&qru=%2Fta%2Fsql-advanced%2Fquestion-ranking&sourceUrl=%2Fexam%2Foj%3Fpage%3D1%26tab%3DSQL%25E7%25AF%2587%26topicId%3D240
SELECT DISTINCT LEVEL
	,count(LEVEL) AS level_cnt
FROM (
	SELECT c.uid
		,c.exam_id
		,c.score
		,b.tag
		,a.LEVEL
	FROM exam_record AS c
	LEFT JOIN examination_info AS b ON c.exam_id = b.exam_id
	LEFT JOIN user_info AS a ON c.uid = a.uid
	WHERE b.tag = "SQL"
		AND c.score > 80
	) AS t1
GROUP BY LEVEL
ORDER BY level_cnt DESC;
