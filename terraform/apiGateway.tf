resource "aws_api_gateway_rest_api" "gateway" {
  name        = "serverless"
  description = "description"
  depends_on = []
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}















resource "aws_ssm_parameter" "ag-id" {
  name  = "api_gateway_id"
  type  = "String"
  value = aws_api_gateway_rest_api.gateway.id
}

resource "aws_ssm_parameter" "ag-root-id" {
  name  = "api_gateway_root_resource_id"
  type  = "String"
  value = aws_api_gateway_rest_api.gateway.root_resource_id
}
