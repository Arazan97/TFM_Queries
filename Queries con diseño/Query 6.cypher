MATCH (P:Product)
WITH DISTINCT P.ProductFeature as PID
MATCH (O:Offer) WHERE PID =  O.product
MERGE (P)-[:Oferta]->(O)
RETURN DISTINCT  P, O
ORDER BY P.label
LIMIT 15