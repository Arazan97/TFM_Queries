MATCH
(P:Product),
(O:Offer)
WHERE P.id = O.product AND O.price < 5000
MERGE (P)-[:Oferta]->(O)
RETURN DISTINCT  P, O
ORDER BY O.price DESC
LIMIT 10