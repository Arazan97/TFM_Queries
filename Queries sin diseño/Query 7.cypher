MATCH (R:Review)
RETURN R, R.reviewDate, R.title, R.text_Element_Text, R.reviewer, R.reviewfor, R.publishDate
LIMIT 50