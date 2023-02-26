MATCH
(Pe:Person{country: 'US'})
RETURN DISTINCT  Pe, Pe.name
ORDER BY Pe.name
LIMIT 5