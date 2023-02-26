MATCH(p:Product{label: 'superfluously eyrie'}) 
RETURN p, p.label
LIMIT 5