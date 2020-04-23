library(gtrendsR)
library(reshape2)

google.trends = gtrends(c("barn cafe"), gprop = "web", time = "all")[[1]]
head (google.trends)
google.trends = dcast(google.trends, date ~ keyword , value.var = "hits")
View (google.trends)
rownames(google.trends) = google.trends$date
google.trends$date = NULL
Sys.setenv(TZ = "UTC")
head (google.trends)

 
plot(google.trends,type = "o", col = "red", xlab = "years", ylab = "Hits", 
     main = "Barn Cafe Trend chart")


