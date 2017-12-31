

fundinfo <- function(fundtype) {
  if (fundtype == "Balanced Income") {
    fundinfo = "This Fund seeks to provide income with some potential 
                for capital appreciation by investing in both fixed income 
                and equity securities based on a targeted allocation among 
                four distinct asset classes: Canadian bonds, Canadian equities, 
                U.S. equities and international equities. 
                The Fund will invest primarily in Canadian bonds, 
                with some exposure to global equities."
  }
  else if (fundtype == "Balanced") {
    fundinfo = "This Fund seeks to provide a balance of income and capital 
                appreciation by investing in both fixed income and equity 
                securities based on a prescribed allocation among four distinct 
                asset classes: Canadian bonds, Canadian equities, 
                U.S. equities and international equities. 
                The Fund will remain relatively balanced between bonds and 
                equities and between Canadian and non- Canadian securities."
  }
  else if (fundtype == "Balanced Growth") {
    fundinfo = "This Fund seeks to provide capital appreciation and some income 
                by investing in both equity and fixed income securities based on 
                a prescribed allocation among four distinct asset classes: 
                Canadian bonds, Canadian equity, U.S. equity and international 
                equity. The Fund will invest primarily in equity securities, 
                with some exposure to Canadian bonds."
  }
  else if (fundtype == "Dividend") {
    fundinfo = "This Fund seeks to provide capital appreciation and dividend 
                income by investing in equity securities of companies from 
                around the world that are expected to pay dividends. 
                This Fund follows a prescribed allocation among three distinct 
                asset classes: Canadian dividend equity, U.S. dividend equity, 
                and international dividend equity."
  }
  else {
    fundinfo = "This Fund seeks to provide capital appreciation by investing 
                in equity securities based on a prescribed allocation among 
                three distinct asset classes: Canadian equity, U.S. equity 
                and international equity. The Fund invests primarily in 
                equity securities."
  }
  return (fundinfo)
}