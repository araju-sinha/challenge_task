terraform {
 backend "gcs" {
   bucket  = "terraforn_state"
   prefix  = "terraform/state"
 }
}