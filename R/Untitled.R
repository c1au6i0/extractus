library(httr2)

# Define the base URL and parameters
base_url <- "https://ctdbase.org/tools/batchQuery.go"
params <- list(
  inputType = "chem",
  inputTerms = "50-00-0|64-17-5", # CAS number for formaldehyde
  report = "genes_curated",
  format = "csv"
)

# Create a request
request <- request(base_url) %>%
  req_url_query(!!!params)

# Perform the request and retrieve the response
response <- request %>%
  req_perform() %>%
  resp_body_string()

# Print the responsed
df <- read_csv(response)
