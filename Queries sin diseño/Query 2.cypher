MATCH(p:Product{id: 8})
MATCH(c:ProductFeature)
MERGE (c)-[a:ProductFeature]->(p)
RETURN DISTINCT  p, c, p.label, p.comment, p.id, p.producer, p.publishDate, p.publisher, p.subClassOf, p.type
ORDER BY p.label
LIMIT 25