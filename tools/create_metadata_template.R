# I will clean this up at some point
library(fs)
library(tidyverse)

DATA_PATH <- "data"
DATASET_DATA <- "data"
METADATA <- "README.md"

create_metadata_template <- function(dataset_name, 
                                     dataset_added = Sys.Date(),
                                     overwrite = FALSE) {
  
  dataset_path <- path(DATA_PATH, dataset_name, DATASET_DATA)
  stopifnot(dir_exists(dataset_path))
  
  
  dataset_files <- list.files(dataset_path, full.names = FALSE)

  path_to_title <- function(x) {
    path_ext_remove(x) %>% 
      str_replace_all("_", " ") %>%
      str_replace_all("-", " ") %>% 
      str_to_title()
  }
  
  dataset_specs <- dataset_files %>% 
    map(function(x) {
      
      df <- read_csv(path(dataset_path, x))
      
      res <- list()
      res["name"]           <- path_to_title(x)
      res["file"]           <- x
      res["nrow"]           <- nrow(df)
      res["ncol"]           <- ncol(df)
      res[["column_names"]] <- colnames(df)
      res[["column_types"]] <- as.character(map_chr(df, typeof))
      res["preview"]        <- knitr::kable(head(df, 5)) %>% 
        paste0(collapse = "\n")
      
      res
    })
    
  dataset_specs
  
  datasets_desc <- map_chr(dataset_specs, function(x) {
    
    header <- str_interp(paste0(
      "## ${name} (${file})\n\n",
      "${nrow} observations of ${ncol} variables.\n\n"
    ), env = x)
    
    column_desc <- map2_chr(x$column_names, x$column_types, function(n, t){
      str_interp("- **${n}** [${t}]: \n")
    }) %>% paste(collapse = "")
    
    str_c(header, column_desc, "\n", x$preview, "\n\n")
  }) %>% paste0(collapse = "\n")
  
  
  dataset_title <- path_to_title(dataset_name)
  
  dataset_header <- str_interp(paste0(
    "# ${dataset_title}\n\n",
    "_added: ${dataset_added}_\n\n",
    "[dataset description]\n\n"
  ))
  
  metadata <- paste0(dataset_header, datasets_desc, collapse = "\n")
  
  write_file(metadata, path(DATA_PATH, dataset_name, METADATA))
  
  metadata
}


