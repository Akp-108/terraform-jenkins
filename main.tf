resource "newrelic_one_dashboard" "exampledash" {
 
  for_each= var.dashboards_details
  name = each.value["dashboardName"]
  permissions = "public_read_only"
  

  page {
    
    name = each.value["PageName"]
        // widgets are like formats which helps in displaying the data in different way...
     // First-row 
      
    // firstrow-row 
    widget_billboard {
      title = each.value["widget1title"]
      row = 1
      column = 1
      width = 3
      height = 3

      nrql_query {
        query       = each.value["widget1Nrql"]
      }
    }

    widget_billboard {
      title =each.value["widget2title"]
      row = 1
      column = 4
      width = 3
      height = 3

      nrql_query {
        query       = each.value["widget2Nrql"]
      }

    }

    widget_table{
      title = each.value["widget3title"]
      row = 1
      column = 7
      width = 6
      height = 3

      nrql_query {
        query       = each.value["widget3Nrql"]
      }

      
    }
  }
}