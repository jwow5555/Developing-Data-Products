# Goal
Capital_Appreciation = 1
Regular_Income = 2
Both = 3

fundtype <- function(return, risk, goal) {
  sharperatio <- return / risk
  if (goal == Both){
    fundtype = "Balanced"
  } else if (goal == Capital_Appreciation){
      if (risk < 10 | return < 15){
        fundtype = "Balanced Growth"
      }
      else {
        fundtype = "Equity Growth"
      }
  } else {
      if (sharperatio < 1){
        fundtype = "Balanced Income"
      }
      else {
        fundtype = "Dividend"
      }
  }
  return (fundtype)
}