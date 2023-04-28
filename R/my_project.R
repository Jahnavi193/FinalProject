

#' This function creates a summary for a numeric vector
#'
#' @param creates the functions to the numeric summary
#' @param creates the vector
#'
#' @return the value of the summary
#' @export
#'

numeric_summary <- function(x, na.rm=FALSE){

  min = min(x, na.rm=na.rm)
  max = max(x, na.rm=na.rm)
  mean = mean(x, na.rm=na.rm)
  sd = sd(x, na.rm=na.rm)
  length = length(x)
  Nmiss = sum(is.na(x))

  c(min=min, max=max, mean=mean, sd=sd, length=length, Nmiss=Nmiss)

}

# This function creates a summary for a character vector

char_summary <- function(x, na.rm=FALSE){

  length = length(x)
  Nmiss = sum(is.na(x))
  Nunique = length(unique(x))

  c(length = length,
    Nmiss = Nmiss,
    Nunique = Nunique )

}

load_all()

cvec <- c("Cancer", NA, "PCOD", "Diabeties", NA, "AIDS")
nvec <- c(17, 21, NA, 20, 25, NA, 22)

char_summary(cvec)
numeric_summary(nvec, na.rm=TRUE)

# To check your package use devtools::check funtion

devtools::check()

numeric_summary(c("a", "b", "c"))
numeric_summary(c(T, F, F, T, NA))


# To insert a documentation skeleton we use insert roxygen skeleton
# To build a document use devtools::document function

devtools::document()

# To check your package use devtools::check funtion
devtools::check()

# To write unit tests we will use testthat package

usethis::use_testthat()
usethis::use_test("numeric_summary")

# To run the tests we use test function

devtools::test()

# Adding readme file to the package
use_readme_md()

# To add vignette to the package we use use_vignette function

usethis::use_vignette("myfinalproject")

# To adding documentation we use R Markdown

devtools::build_vignettes()

# To import the dataset I created, use dataset command

Dataset <- read.csv("C:/Users/Dell/OneDrive/Desktop/JAHNAVI/Dataset.csv")
  View(Dataset)

