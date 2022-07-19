###
# Description:  
#
# used for creating email routes
# https://github.com/MyPureCloud/terraform-provider-genesyscloud/blob/main/examples/resources/genesyscloud_routing_email_route/resource.tf
###

# resource "genesyscloud_routing_email_route" "support-route" {
#   domain_id    = "example.domain.com"
#   pattern      = "support"
#   from_name    = "Example Support"
#   from_email   = "examplesupport@example.domain.com"
#   queue_id     = genesyscloud_routing_queue.example-queue.id
#   priority     = 5
#   skill_ids    = [genesyscloud_routing_skill.support.id]
#   language_id  = genesyscloud_routing_language.english.id
#   flow_id      = data.genesyscloud_flow.flow.id
#   spam_flow_id = data.genesyscloud_flow.spam_flow.id
#   reply_email_address {
#     domain_id = "example.domain.com"
#     route_id  = genesyscloud_routing_email_route.example.id
#   }
#   auto_bcc {
#     name  = "Example Support"
#     email = "support@example.domain.com"
#   }
# }


resource "genesyscloud_routing_email_route" "nexustest_route" {
  domain_id    = data.genesyscloud_routing_email_domain.csp_email_domain.id
  pattern      = "nexustest"
  from_name    = "Nexus Test"
  from_email   = "nexustest@csp.mypurecloud.com"
  #queue_id     = genesyscloud_routing_queue.test-queue.id
  #priority     = 5
  #skill_ids    = [genesyscloud_routing_skill.support.id]
  #language_id  = genesyscloud_routing_language.english.id
  flow_id      = data.genesyscloud_flow.email_flow.id
  spam_flow_id = data.genesyscloud_flow.email_flow.id
  # reply_email_address {
  #   domain_id = data.genesyscloud_routing_email_domain.csp_email_domain.id
  #   #route_id  = "${genesyscloud_routing_email_route.nexustest_route.id}"
  # }
  # auto_bcc {
  #   name  = "Test Support"
  #   email = "support@test.example.com"
  # }
}




data "genesyscloud_flow" "email_flow" {
  name = "Nexus Email Flow"
}

data "genesyscloud_routing_email_domain" "csp_email_domain" {
  name      = "csp.mypurecloud.com"
}

data "genesyscloud_routing_email_domain" "genesyscsptesting_email_domain" {
  name      = "genesyscsptesting.mypurecloud.com"
}