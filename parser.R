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


#' Gets the number of hosts on the report
#'
#' @param doc 
#'
#' @return
#' @export
#'
#' @examples
GetNumberOfHosts <- function(doc) {
  xpath <- paste("//Report/ReportHost", sep = "")
  return(length((XML::xpathApply(doc, xpath))))
}

#' Gets the IP of the host 'hostnumber'
#'
#' @param doc 
#'
#' @return
#' @export
#'
#' @examples
GetIPofHostnmber <- function(doc, hostnumber=1) {
  
}

#' Gets the XML of the given host
#'
#' @param doc 
#' @param hostnumber 
#'
#' @return
#' @export
#'
#' @examples
GetXMLHost <- function(doc, hostnumber=1) {
  xpath <- paste("//Report/ReportHost", sep = "")
  return(XML::xpathApply(doc, xpath)[[hostnumber]])
}


#' Get the number of vulnerabilities of the host 'hostnumber'
#'
#' @param doc 
#' @param hostnumber 
#'
#' @return
#' @export
#'
#' @examples
GetNumberOfVuls <- function(doc, hostnumber=1) {
  xml_host <- GetXMLHost(doc = doc, hostnumber = hostnumber)
  xpath <- paste("//ReportItem", sep = "")
  return(length(XML::xpathApply(xml_host, xpath)))
}
