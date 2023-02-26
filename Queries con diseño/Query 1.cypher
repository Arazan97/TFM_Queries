MATCH(p1:Product{ProductFeature: 7})
USING INDEX p1:Product(ProductFeature)
WITH DISTINCT p1.ProductFeature as PID_1
MATCH(p2:Product{ProductFeature: 2})
USING INDEX p2:Product(ProductFeature)
WITH DISTINCT p2.ProductFeature as PID
MATCH(c1:ProductFeature{id: 7})
USING INDEX c1:ProductFeature(id)
MATCH(c2:ProductFeature{id: 2})
USING INDEX c2:ProductFeature(id) WHERE PID = c2.id
MERGE (c1)-[:Product_ProductFeature]->(p1)
MERGE (c2)-[:Product_ProductFeature]->(p2) 
RETURN DISTINCT  p1, p2,   c1,  c2
LIMIT 10