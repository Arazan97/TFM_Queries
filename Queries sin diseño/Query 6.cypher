MATCH
(P:Product),
(O:Offer)
WHERE P.id = O.product
MERGE (P)-[:Oferta]->(O)
RETURN DISTINCT  P, O
ORDER BY P.label
LIMIT 15