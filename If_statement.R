price_calculator <- function(hourly_value, pph = 40)
{
  # Calculate charges as hourly_value times
  # price per hour
  net_price <- hourly_value * pph
  if(hourly_value > 100){ 
    net_price <- net_price*0.9
  }
  round(net_price) 
  return(net_price)
} 


price_calculator(hourly_value = 102)

 
# Using if else statement
price_calculator <- function(hourly_value, pph = 40, public)
{
  # Calculate charges as hourly_value times
  # price per hour
  net_price <- hourly_value * pph
 
   if(hourly_value > 100){ 
      net_price <- net_price*0.9
   } 
  if(public) {
     total_price <- net_price * 1.06
   } 
    else {
     total_price <- net_price * 1.12
   }
  round(total_price)
  return(total_price)
}
  
price_calculator(45, public = TRUE)
