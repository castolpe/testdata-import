

library("foreign")

path <- "H:/clone/testdata2/dist/"
dataset <- list.files(path)
study <- "testdata"

dataset <- gsub(".dta","", dataset, fixed=TRUE)


logical.variables <- function(dataset){
  dta <- read.dta(paste0(path,dataset,".dta"))
  variable <- names(dta)
  d <- data.frame(study, variable, dataset)
  return(d)
}

lapply(dataset, FUN=function(x) logical.variables(x))

write.csv(d, file = "H:/clone/testdata-import/logical_variables.csv")