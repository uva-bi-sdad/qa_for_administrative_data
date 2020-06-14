
#Description: basic connection to and query of the PostgreSQL database
# created: 9/19/2014
# author: Aaron D. Schroeder
# REQUIRED: RPostgreSQL package

library(DBI)
library(RPostgreSQL) # load the database connection library

drv <- dbDriver("PostgreSQL") # create instance of database driver

# close all existing connections
all_cons <- dbListConnections(drv) 
for(con in all_cons) 
   {dbDisconnect(con)}

# using the driver instance, create a new connection to the database
con <- dbConnect(drv, dbname="arlington", host="postgresql", port=5432, user="aschroed", password="Iwnftp$2")
