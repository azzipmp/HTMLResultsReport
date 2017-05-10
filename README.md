# HTMLResultsReport
Explanation of the HTML results function - This function would create results in HTML format - PASSS - GREEN COLOR, FAILED - RED AND INFORMATION - BLUE COLOR

# Exceldatatable function would work for both xls and xlsx.

# Attaching the HTML reporter functions
require "C:/Azzi-Cdrive/Azzi/Datatable/HtmlReporter.rb"

# Path to create HTML results
path = "C:/Azzi-Cdrive/Azzi/Datatable/results.html"


# Instantiate the Webreporter class with path and index as aruments
@phtmlReport = WebReporter.new()

# Information purpose -> DISPLAYED IN BLUE COLOR
@phtmlReport.ReportEvent("Checking the Login functionality","Info","Checking the Login functionality")

# PASSED - DISPLAYED IN GREEN COLOR
@phtmlReport.ReportEvent("Checking the Login functionality","pass","Able to login sucessfully")

#FAILED - DISPLAYED IN RED COLOR
@phtmlReport.ReportEvent("Checking the Login functionality","fail","Failed to login sucessfully")

#
# Save the report
@phtmlReport.Save(path)
