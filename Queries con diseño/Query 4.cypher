MATCH(p:Product{label: 'superfluously eyrie'}) 
USING INDEX p:Product(label)
RETURN p, p.label
LIMIT 5