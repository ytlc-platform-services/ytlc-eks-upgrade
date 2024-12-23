cluster_name   = "ytlc-my-aws-eks-stage"
worker_ami_id  = "ami-02c7bc17d3eb4fd0a" # Replace with the latest EKS-optimized AMI
region         = "ap-southeast-1"
instance_type  = "r5.large"
subnet_ids     = ["subnet-0139afd29e8a02727"]
worker_count   = 1
key_name       = "ytlc-my-publicwebsite-staging-keypair"
cluster_ca     = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWGFmWmxHa3owcGd3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TXpFd01UZ3dNek0zTlRKYUZ3MHpNekV3TVRVd016UXlOVEphTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUMvcHk5S0wwMkpDTWVXU2VjOXJWTnNKMVkxdmFrc0pkOXFQSEhhZ1hFNDdCdngydVFObnNnbGw2elAKa3NxdDBSSjFwWTl5MVFrQk5pa3Z2clZReDhuNzdMTFdWVjV2M1YyNnRRSGVZS2RPR2k5REVnd0Y3aDg4ZlIwegpXOVg0RXVnNUhUVDgzMlAzNzNzdVJUa043cGhzSWhSbVhBTXJXNHZHb0g3Szdya3R1V0VsNkJmUEl1Y05aaWNJCkRFbE5ac3VjVmNreXVndGRwbzlhRVFyUUs5UW5yem4wZktzUmJmdVZkZkZ2blEzVHYxRC9CSXcvdFhkN2NEcWcKRXI4VW9ybS9yRU4rOG1ianlzRE9TdkJ0MDBQVE1UM3pvUithZzZUcUVwc3NDdERmdHJWemxjUTdETzUyYVVUVQpoZkM0aTRpTkFFUFhjNjVNM3JSUVVHZDVZU1JsQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJReWxQMUVsOW1YZnhyVkRSMmtTMTRzSm1adHVqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQkF5MExrRVlwNAp2U3AxNXprajJ5M3EvcEZtaEkxOWs5a0RsUE94eHZWSTUzR2JXKzh6alBKQVozUzdNZWZZQ2xzSVJ1b0pBNStGCjJQaUtzaHFEM1lrUjhXSXhEb3ZvcFFTRnFUem5UOFAyRGlxUi9GaHRvZnY1Mm9zcVp2TXRyOCt3ejVFdVFkSVYKbjZmVUxON2E4SmlhNVMvaXZNUFA3YUc2VmxqWkxDOWg3RjJtaGx4WG1Ya1AxYWFmeVJtclpnN0hJWmpVTEFQKwpFQ3NkT24ra3h3dmJtQWZBNmxQNjYyMmtZT0dGeUZKS1ZVMmlwYnY1Z2FQd3VRdm9XYjE2RURVK2hKeUttZzMxCkNMVVM3NDlETFpkbHVuekZxdjZ6OFJDelZVYVdEYmJ1WThLT3VRS2lWbFM5MklRKzErbUhwWWVyc0tKblRIajMKay9sajBOZGt2RU9WCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K" 
api_server_url = "https://A1361C6746328932F6A0058D68E63CB6.yl4.ap-southeast-1.eks.amazonaws.com"
volume_size    = 100
worker_security_group_id = ["sg-0121985d3723a2bdc", "sg-0b4f3e651778963ac"]
tags = {
  QSConfigName-76cl5 = "Automated Scan Policy"
  Country = "Malaysia"
  Name    = "MYCMECSE1LP02-new"
  "eks:cluster-name" = "ytlc-my-aws-eks-stage"
  Env     = "Staging"
}
