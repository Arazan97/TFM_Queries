LOAD CSV FROM 'file:///dataFromRatingSite_2_1G.csv' AS row
WITH row[0] AS Review_reviewfor,row[1] AS Review_reviewer, row[2] AS Review_reviewDate, row[3] AS Review_title, row[4] AS Review_text_Element_Text, row[5] AS Review_text_Attribute_lang, toInteger(row[6]) AS Review_rating_Element_Text, toInteger(row[7]) AS Review_rating_Attribute_nr,toInteger(row[8]) AS Review_publisher, row[9] AS Review_publishDate, toInteger(row[10]) AS Review_Attribute_id
CREATE (Review:Review {id:Review_Attribute_id, reviewfor:Review_reviewfor, reviewer:Review_reviewer,reviewDate:Review_reviewDate, title:Review_title, text_Element_Text:Review_text_Element_Text, text_Attribute_lang: Review_text_Attribute_lang, rating: Review_rating_Element_Text, rating_Attribute_nr: Review_rating_Attribute_nr, publisher:Review_publisher, publishDate:Review_publishDate})