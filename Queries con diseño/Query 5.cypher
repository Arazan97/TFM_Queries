MATCH(b:Producer{country: 'AT', id: 4}) 
RETURN DISTINCT b, b.id
LIMIT 50