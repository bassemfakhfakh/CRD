update  [innovator].[MSO_REFERENCE] 
set REFERENCE_PROPERTY = 
	(select id from [innovator].[PROPERTY] 
		where source_id = 
			(select id from [innovator].[ITEMTYPE] 
				where name = 'DnA_CRD_Prod_File_Relationship'
			) 
		and name ='related_id') where label in ('DnA CRD Document Viewable','DnA CRD Document Native')