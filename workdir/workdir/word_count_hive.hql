CREATE TABLE analytics.docs(lines STRING);

LOAD DATA LOCAL INPATH
'/home/${env:USER}/big-data-masters-program/workdir/docks.dat'
INTO TABLE analytics.docs;

SELECT word, count(1) AS count FROM (
SELECT explode(split(line, ' ')) AS word FROM docs
) w 
GROUP BY word ORDER BY word;
