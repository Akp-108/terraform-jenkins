variable "dashboards_details" {
  type = map(object({
    dashboardName = string
    PageName      = string
    widget1title  = string
    widget2title  = string
    widget3title  = string
    widget1Nrql   =string
    widget2Nrql   =string
    widget3Nrql   =string
    
  }))
}

