MATCH
(V:Vendor ),
(P:Product),
(O:Offer)
WHERE V.id < 10 AND P.id < 20 AND O.product < 20 AND O.vendor < 10 AND V.id = O.vendor AND P.id = O.product
MERGE (P)-[:Oferta]->(O)
MERGE (O)-[:Oferta_Vendedor]->(V)
RETURN DISTINCT  P, O, V
ORDER BY P.label
LIMIT 2