agecalc <- function( from, to )  { 
  
  lt   <- as.POSIXlt( c( from, to ) ) 
  
  age  <- lt$year[2] - lt$year[1] 
  mons <- lt$mon + lt$mday / 50 
  
  if(mons[2] < mons[1]) age <- age -1 
  
  return( age )
}