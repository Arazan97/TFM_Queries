MATCH(p:Product{ProductFeature: 1})
RETURN DISTINCT  p
ORDER BY p.label
LIMIT 10