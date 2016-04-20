#' Get policy preferences of the report - XML format
#'
#' @param doc 
#'
#' @return
#' @export
#'
#' @examples
GetPreferencesPolicy <- function(doc) {
  xpath <- paste("//NessusClientData_v2/Policy/Preferences", sep = "")
  return(XML::xpathApply(doc, xpath)[[1]])
}


#' Get all report data - XML format
#'
#' @param doc 
#'
#' @return
#' @export
#'
#' @examples
GetReport <- function(doc) {
  xpath <- paste("//NessusClientData_v2/Report", sep = "")
  return(XML::xpathApply(doc, xpath)[[1]])
}


#' Title
#'
#' @param doc 
#'
#' @return
#' @export
#'
#' @examples
GetR <- function(doc) {
  xpath <- paste("//Report/ReportHost", sep = "")
  return(XML::xpathApply(doc, xpath))
}
