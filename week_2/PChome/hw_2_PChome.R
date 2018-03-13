#RCrawler_PChome
library(httr)

# Set url
url <- "https://ecshweb.pchome.com.tw/search/v3.3/all/results?q=macbook%20pro&page=1&sort=rnk/dc"
# Get response
res = GET(url)

# Parse the content
res_json = content(res)

# Create dataframe
raw = data.frame(do.call(rbind,res_json$prods))

# Pick up variables
result = subset(raw,select = c(name, describe, price))

# Show result
View(result)
