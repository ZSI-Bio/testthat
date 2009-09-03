#' Minimal test suite
#' 
#' The minimal test suite provides the absolutely minimum amount of 
#' information: whether each expectation has succeeded, failed or experienced
#' an error.  If you want to find out what the failures and errors actually
#' were, you'll need to run a more informative test suite.
MinimalSuite$do({
  self$add_result <- function(result) { 
    if (result$passed) {
      cat(colourise(".", fg = "light green"))
    } else {
      if (result$error) {
        cat(colourise("F", fg = "red"))
      } else {
        cat(colourise("E", fg = "red"))
      }
    }
  }
  
  self$end_suite <- function() {
    cat("\n")
  }
})