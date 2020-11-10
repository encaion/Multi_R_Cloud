# install.packages("DBI")
# install.packages("RMariaDB")

library("DBI")
library("RMariaDB")
drv = dbDriver("MariaDB")
con = dbConnect(drv = drv,
                host = "db-edu.cqavsxe3hmq4.ap-northeast-2.rds.amazonaws.com",
                port = 3306,
                dbname = "test",
                user = "",
                password = "")
