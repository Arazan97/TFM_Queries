MATCH(p1:Product{ProductFeature: 7})
MATCH(p2:Product{ProductFeature: 2})
MATCH(c1:ProductFeature{id: 7})
MATCH(c2:ProductFeature{id: 2})
MERGE (p1)-[:ProductFeature]->(c1)
MERGE (p2)-[:ProductFeature]->(c2) 
RETURN DISTINCT  p2.label, p1.label, c1, c2, p1, p2
ORDER BY p1.label
LIMIT 6