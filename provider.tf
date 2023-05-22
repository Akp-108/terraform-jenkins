# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id =3771867
  api_key = "NRAK-AXW6RGDQZIC48C5OFDQ9HMDXL67"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}
