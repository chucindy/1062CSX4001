#RCrawler_NEWS
library(rvest)

# Set url
url <- "http://news.ltn.com.tw/list/breakingnews"
# Get response
res <- read_html(url)

# Parse the content and extract the titles
titles <- res %>% html_nodes(".tit p") %>% html_text()

# Extract link
link <- res %>% html_nodes("a.tit") %>% html_attr("href")

# Create dataframe
result <- data.frame(titles,link)

# Set df's colnames
result.col.names <- c("title", "link")
colnames(result) <- result.col.names

# Show result
View(result)