# given a table, calculate the percent of columns which have more
# NA values than a threshold

data1996 <- read.delim(file.path(project.dir,"/MERGED1996_97_PP.csv"), na.strings=c("NULL",""), header=TRUE,sep=",") 


na.max <- .2
na.prop <- apply(data2009, 2, function(x) sum(is.na(x)/length(x)))
#na.prop

percemt_good <- (sum(na.prop < na.max)/length(data2009))

na.prop2 <- apply(data1996, 2, function(x) sum(is.na(x)/length(x)))
#na.prop2

(sum(na.prop2 < na.max)/length(data1996))

na.prop3 <- apply(data2014, 2, function(x) sum(is.na(x)/length(x)))
#na.prop3

(sum(na.prop3 < na.max)/length(data2014))