###
# Description:  
#
# for local machine enviornment settings create a file named prov-variables.tf under the root folder that will be ignored.
# hard code the 3 top variables below oauthclient_id, oauthclient_secret, aws_region
###

# variable "oauthclient_id" {
#   type        = string
#   description = "oAuth Client ID"
#   default = ""
# }

# variable "oauthclient_secret" {
#   type        = string
#   description = "oAuth Client Secret"
#   default = ""
# }

# variable "aws_region" {
#   type        = string
#   description = "us-east-1"
#   default = "us-east-1"
# }

###
# Extra variables to use
###

# variable "genesys_email_domain" {
#   type        = string
#   description = "The name of the email domain  This is used to help build the email route"
# }

# variable "genesys_email_domain_region" {
#   type        = string
#   description = "The name of the email region that the email domain name will reside in."
# }

# variable "classifier_url" {
#   type        = string
#   description = "The URL to call the classifier"
# }

# variable "classifier_api_key" {
#   type        = string
#   description = "API Key for classifier endpoint"
# }




