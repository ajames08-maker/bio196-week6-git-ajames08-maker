metadata <- read.csv("data/sample_metadata.csv")

   required_columns <- c("sample_id", "condition", "replicate")
   stopifnot(all(required_columns %in% names(metadata)))
   stopifnot(!anyDuplicated(metadata$sample_id))

   print(metadata)
   print(table(metadata$condition))