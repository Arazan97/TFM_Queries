MATCH(p:Product{ProductFeature: 1})
USING INDEX p:Product(ProductFeature)
RETURN DISTINCT  p
ORDER BY p.label
LIMIT 10