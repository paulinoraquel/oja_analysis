

install.packages("devtools")
library(devtools)
install_github("https://github.com/eurostat/wihoja.git", auth_token="9f8536122e521fe1a7083f23913d501055827994")

library(wihoja)
oja <- query_athena(" select * from ")
oja <- query_athena(" select * from estat_dsl2531b_oja.ft_document_en_V8 limit 10")

company_name_lu <- query_athena(" select companyname from estat_dsl2531b_oja.ft_document_en_V8 where idcountry='LU' limit 1000")


oja <- get_oja(idcountry = 'PT', lang = 'en')


oja_count <- get_oja_count(idcountry = 'LU', lang = 'pt', group_by = 'sourcecountry')


noja <- get_oja_count(group_by = "source")

nojv <- get_ojv_count(group_by = "source")
