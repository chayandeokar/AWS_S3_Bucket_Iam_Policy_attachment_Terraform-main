provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA6ACF6LCM3CX2U6EL"
  secret_key = "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"
}


module "main_module"  {
    source = "./Create_Bucket"
    s3_buckets_names = var.s3_buckets_names
    
} 

module "create_users"  {
    source = "./Create_User"
    iam_name = var.iam_name
}

module "create_roles"  {
    source = "./Create_Role_Assign_Roles"
    iam_policy_names = var.iam_policy_names
    iam_name = var.iam_name
}
