


sunrise_times_tomorrow <- function(lon = 4.8945, lat = 52.3667){
  
  if(!require(suncalc)){
    stop("Please install the suncalc package first!")
  }
  
  # 
  
  # 
  suncalc::getSunlightTimes(date = Sys.Date() + 1, 
                            tz = Sys.timezone(),
                            lon = lon, lat = lat,
                            keep = c("sunrise","sunset"))
  
}

sunrise_times_tomorrow()
sunrise_times_tomorrow(lat = -30)
