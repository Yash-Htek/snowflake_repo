terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "Hoonartek"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
  account  = "https://av74281.central-india.azure.snowflakecomputing.com"
  username = "YASHGAJBHIYE"
  password = "HTEK@#1193"
  role     = "ACCOUNTADMIN"
  warehouse = "COMPUTE_WH"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
