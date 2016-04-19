GetCWETitle <- function(doc, cwe = "100") {
  xpath <- paste("//Weakness[@ID = '" , cwe, " ') /@Name", sep = "")
  return(unlist(XML::xpathApply(doc, xpath))(("Name")))
}

