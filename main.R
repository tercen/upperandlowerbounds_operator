library(tercen)
library(dplyr)

do.uplow = function(df, upperbound_parameter, lowerbound_parameter, percentage_flag) {
  
  data_tbl <- df %>% summarise(value = mean(.y))
  data <- data_tbl$value
  
  upperbound_absolute <- data + (data * upperbound_parameter)
  lowerbound_absolute <- data + (data * lowerbound_parameter)
  if (percentage_flag == TRUE) upperbound_parameter <- upperbound_parameter * 100
  if (percentage_flag == TRUE) lowerbound_parameter <- lowerbound_parameter * 100
  
  return(data.frame(
    .ri = df$.ri[1],
    .ci = df$.ci[1],
    upperbound_absolute = upperbound_absolute,
    lowerbound_absolute = lowerbound_absolute,
    upperbound_relative = upperbound_parameter,
    lowerbound_relative = lowerbound_parameter
  ))
}

ctx = tercenCtx()

ctx %>%
  select(.ci, .ri, .y) %>%
  group_by(.ci, .ri) %>%
  do(do.uplow(., as.double(ctx$op.value('upper bound')), as.double(ctx$op.value('lower bound')), as.logical(ctx$op.value('percentage')))) %>%
  ctx$addNamespace() %>%
  ctx$save()
