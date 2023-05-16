dashboards_details={
        dashboard1={
        dashboardName = "Brand-microservice-ping-via-terraform", PageName = "Brand-microservice(ping)", 
         widget1title = "Brand Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Brand Microservice Ping' SINCE 1 hour ago",
         widget2title ="Brand Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Brand Microservice Ping'",
         widget3title ="Latest 2 Brand ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Brand Microservice Ping' SINCE 1 hour ago LIMIT 2",
      
     },
    dashboard2={
        dashboardName = "product-microservice-ping-via-terraform", PageName = "product-microservice(ping)", 
        widget1title = "Product Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Product Microservice Ping' SINCE 1 hour ago",
        widget2title ="Product Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Product Microservice Ping'",
        widget3title ="Latest 2 Product ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Product Microservice Ping' SINCE 1 hour ago LIMIT 2",
                
    }, 

    dashboard3={
        dashboardName = "Cart-microservice-ping-via-terraform", PageName = "Cart-microservice(ping)", 
         widget1title = "Cart Ping Success in last 1 hour", widget1Nrql ="FROM SyntheticCheck SELECT percentage(count(*), WHERE result = 'SUCCESS') AS 'Success Rate' WHERE monitorName = 'Cart Microservice Ping' SINCE 1 hour ago",
         widget2title ="Cart Ping GB ingested of current month",widget2Nrql="SELECT bytecountestimate() / 10e8 as 'Ping GB ingested Estimate' FROM SyntheticCheck, SyntheticRequest, SyntheticsPrivateLocationStatus, SyntheticPrivateMinion SINCE this month where monitorName = 'Cart Microservice Ping'",
         widget3title ="Latest 2 Cart ping Checks",widget3Nrql="SELECT error, result FROM SyntheticCheck WHERE monitorName = 'Cart Microservice Ping' SINCE 1 hour ago LIMIT 2",
        

}}