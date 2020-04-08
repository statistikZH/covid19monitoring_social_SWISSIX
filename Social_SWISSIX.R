# prepare swissix daily volume data for monitoring covid19
#
# Authors: Corinna Grobe <corinna.grobe@statistik.ji.zh.ch>
# Date: 06.04.2020
###############################################################################

# Import libraries
library(dplyr) # Version >= 0.8.5
library(assertthat) # Version >= 0.2.1

# Number formatting
options(scipen = 1000000)
options(digits = 6)

# get and transform data function
getData <- function(url_dat)
{
  if(missing(url_dat)) url_dat <- "https://ixpmanager.swissix.ch/swissix_daily_volume.txt"
  
  # import dat
  dat <- read.csv(url(url_dat), header = F, sep="\t", stringsAsFactors=FALSE, encoding="UTF-8") 
   
  
  #prepare dat
  dat_prep <- dat %>%
    transmute(
      'date' := as.POSIXct(paste(.data$V1, "%Y-%m-%d"), format="%Y-%m-%d"),
      'value' := .data$V2,
      'topic' := "Soziales",
      'variable_short' := "internet_datenvolumen",
      'variable_long' := "Internet-Datenvolumen", 
      'location' := "CH",
      'unit' := "Terabit pro Tag",
      'source' := "SwissIX Swiss Internet Exchange",
      'update' := "t\u00e4glich",
      'public' := "ja",
      'description' := "https://github.com/CGRBZH/covid19_soc_swissix"
    )
  
  # return
  return(dat_prep)
}

# test result function
testTable <- function(df)
{
  df_spec <- readRDS(url('https://github.com/CGRBZH/covid19_soc_swissix/raw/master/df_spec.rds'))

  assert_that(is(df, 'data.frame'))
  assert_that(identical(names(df), df_spec$name))

  purrr::pwalk(as.list(df_spec), ~assert_that(is(get(.x, df), .y)))

  return(invisible(NULL))
}

# main
url_dat <- "https://ixpmanager.swissix.ch/swissix_daily_volume.txt"
dat_prep <- getData(url_dat)
test <- testTable(dat_prep)
write.table(dat_prep, "./Social_SWISSIX.csv", sep=",", fileEncoding="UTF-8", row.names = F)
