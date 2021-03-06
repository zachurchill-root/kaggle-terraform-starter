# ----------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ----------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------------------------------------------------------------------------------

variable "competition" {
  description = "Name of the Kaggle competition used by the `kaggle` API, e.g. house-prices-advanced-regression-techniques"
  type        = string
}

variable "secret_name" {
  description = "The name of the Secrets Manager secret that contains the `kaggle.json` API credentials"
  type        = string
}

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ----------------------------------------------------------------------------------------------------------------------

variable "random_testing_suffix" {
  description = "Suffix used by Terratest to guarantee unique names during parallel testing"
  type        = string
  default     = null
}

variable "s3_bucket_prefix" {
  description = "The prefix used for the S3 bucket name that ensures globally unique bucket names"
  type        = string
  default     = null
}
