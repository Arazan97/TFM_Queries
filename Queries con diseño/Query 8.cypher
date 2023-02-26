MATCH (V:Vendor)
WHERE V.id < 10
WITH DISTINCT V.id AS VID
MATCH (O:Offer)
WHERE VID = O.vendor 
WITH DISTINCT O.product AS OPR
MATCH (P:Product)
WHERE OPR = P.id AND P.id < 20
MERGE (P)-[:Oferta]->(O)
MERGE (O)-[:Oferta_Vendedor]->(V)
RETURN DISTINCT  P, O, V
ORDER BY P.label
LIMIT 2