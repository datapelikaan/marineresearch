


# 1.
max(c(NA, NA, NA), na.rm = TRUE)

max(NULL, na.rm = T)



x <- c(NA, NA, NA)
safe_value <- 0






safe_max <- function(x, safe_value = 0){
  
  if(is.null(x) || all(is.na(x))){
    return(safe_value)
  } else {
    return(max(x, na.rm = TRUE))
  }
  
}


safe_max(mydata)
safe_max(c(NA,NA,NA), safe_value = 2)
safe_max(c(NA,NA,NA))




# 2.
floor(12.1)
ceiling(12.1)



round_up_down <- function(x, method){
  
  if(method == "up"){
    ceiling(x)
  } else if(method == "down") {
    floor(x)
  } else {
    stop("Method is not supported!")
  }
  
}

round_up_down(3.141, "up")
round_up_down(3.141, "down")

round_up_down(3.141, "bviufgnbfgibunfg")



round_up_down <- function(x, method = c("up","down")){
  
  method <- match.arg(method)
  
  if(method == "up"){
    ceiling(x)
  } else if(method == "down") {
    floor(x)
  }
  
}

round_up_down(3.141, "down")
round_up_down(3.141, "do")
round_up_down(3.141, "dovoudbfviudfb")





round_up_down <- function(x, method = c("up","down")){
  
  method <- match.arg(method)
  
  switch(method, 
         "up" = {
           ceiling(x)
          },
         down = floor(x))
  
}









# 3.
# Function scope
library(stringr)

x <- "Hoofdstraat 12, 5524 AJ, Geeneveen"








remove_postcode_space <- function(txt){
  
  stopifnot(is.character(txt))
  
  pc <- stringr::str_extract(txt, "[0-9]{4}[[:space:]]+[a-zA-Z]{2}")
  pc_ns <- stringr::str_replace(pc, "[[:space:]]", "")

  browser()
  
  out <- stringr::str_replace(txt, pc, pc_ns)
  out[is.na(out)] <- txt[is.na(out)]
  
return(out)
}


remove_postcode_space("Hoofdstraat 12, 5524 AJ, Geeneveen")
remove_postcode_space("Hoofdstraat 12 Geeneveen")








