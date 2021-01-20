library(wihoja)


oja <- query_athena(" select * from estat_dsl2531b_oja.ft_document_en_V5 limit 10")

company_name_lu <- query_athena(" select companyname from estat_dsl2531b_oja.ft_document_en_V8 where idcountry='LU' limit 1000")


oja <- get_oja(idcountry = 'LU', lang = 'pt')


oja_count <- get_oja_count(idcountry = 'LU', lang = 'pt', group_by = 'sourcecountry')


noja <- get_oja_count(group_by = "source")

nojv <- get_ojv_count(group_by = "source")
