SELECT ACTOR.Name, COUNT(MOVIE_ACTOR.ActorId)
FROM ACTOR
JOIN MOVIE_ACTOR
ON (MOVIE_ACTOR.ActorId = ACTOR.ActorId)
GROUP BY ACTOR.Name
ORDER BY COUNT(MOVIE_ACTOR.ActorId) DESC, ACTOR.Name ASC
LIMIT 20;