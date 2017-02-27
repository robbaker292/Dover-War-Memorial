-- adds fulltext index
alter table casualty add fulltext(given_name);

SELECT given_name, middle_names, family_name, narrative FROM casualty
WHERE MATCH(narrative) AGAINST('castle');

-- finds all results with the word in the narrative, or name, with those in name and narrative ranked higher
SELECT id, given_name, middle_names, family_name, narrative,
MATCH(given_name) AGAINST('Frank') AS fscore,
MATCH(family_name) AGAINST('Frank') AS sscore,
MATCH(given_name, middle_names, family_name, narrative) AGAINST('Frank') as score 
FROM casualty
WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST('Frank')
ORDER BY (fscore+sscore+score) DESC


SELECT id, CONCAT(given_name, middle_names, family_name) AS title, narrative AS content,
(MATCH(given_name) AGAINST('Zeebrugge') + MATCH(family_name) AGAINST('Zeebrugge') + MATCH(given_name, middle_names, family_name, narrative) AGAINST('Zeebrugge')) as score
FROM casualty
WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST('Zeebrugge')
ORDER BY score DESC

SELECT "article" AS type, id, title, content,
MATCH(title, content) AGAINST('Zeebrugge') as score
FROM article
WHERE MATCH(title, content) AGAINST('Zeebrugge')
ORDER BY score DESC

-- finds all results with the word in the narrative or title of a casualty or article or site_update or commemoration_location
(
SELECT "casualty" AS type, id, CONCAT(given_name, " ", middle_names, " ", family_name) AS title, narrative AS content,
(MATCH(given_name) AGAINST('Zeebrugge') + MATCH(family_name) AGAINST('Zeebrugge') + MATCH(given_name, middle_names, family_name, narrative) AGAINST('Zeebrugge')) as score
FROM casualty
WHERE MATCH(given_name, middle_names, family_name, narrative) AGAINST('Zeebrugge')
) UNION
(
SELECT "article" AS type, id, title, content,
MATCH(title, content) AGAINST('Zeebrugge') as score
FROM article
WHERE MATCH(title, content) AGAINST('Zeebrugge')
) UNION
(
SELECT "siteUpdate" AS type, id, title, content,
MATCH(title, content) AGAINST('Zeebrugge') as score
FROM site_update
WHERE MATCH(title, content) AGAINST('Zeebrugge')
) UNION
(
SELECT "memorial" AS type, id, name AS title, narrative AS content,
MATCH(name, narrative) AGAINST('Zeebrugge') as score
FROM commemoration_location
WHERE MATCH(name, narrative) AGAINST('Zeebrugge')
)
ORDER BY score DESC