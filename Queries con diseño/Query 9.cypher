MATCH
(Pe:Person{country: 'US'})
USING INDEX Pe:Person(country)
RETURN DISTINCT  Pe, Pe.name
ORDER BY Pe.name
LIMIT 5