# minimal specification of output data for monitoring covid19
#
# Authors: Corinna Grobe
# Date: 06.04.2020
###############################################################################

# generate df spec
df_spec <- function()
{
  df_spec <- tibble('name' := c('date', 'value', 'topic', 'variable_short', 'variable_long', 'location', 'unit', 'source', 'update', 'public', 'description')) %>%
  mutate('class' := c('POSIXct', 'numeric', rep('character', n() -2)))
  
  saveRDS(df_spec, 'df_spec.rds')
  
  df_spec <- readRDS(url('https://github.com/CGRBZH/covid19_soc_swissix/raw/master/df_spec.rds'))
}