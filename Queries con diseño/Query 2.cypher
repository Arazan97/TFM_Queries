MATCH(c:ProductFeature)
MATCH(p:Product{id: 3})
USING INDEX p:Product(id) WHERE c.id = p.ProductFeature
MERGE (c)-[a:ProductFeature]->(p)
RETURN DISTINCT p,c
LIMIT 5