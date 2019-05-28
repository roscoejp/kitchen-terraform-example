/*******************************************
    Project Configuration Variables
*******************************************/
variable "credentials_file_path" {
    description = "Project Credentials. Eg: /path/to/google/credentials.json"
}
variable "project_id" {
    description = "Id of the Project for the Bucket"
}
/*******************************************
    Google Storage Bucket Variables
*******************************************/
variable "bucket_name" {
  description = "Name for the Storage Bucket"
}
