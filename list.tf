//{[for user in var.users : user.name if user.pubkey_file != ""]
//[for b in var.s3_list :
//}
module "${s3_list.index(b)} + " {
 source                    = var.     #"git@github.com:ConnectedHomes/dp-terraform-s3.git?ref=v2.1.3"
 name                      = [var.s3_list[name] for b.name != "" in var.s3_list]
 namespace                 = var.namespace
 stage                     = var.stage
 delimiter                 = var.delimiter
 allow_write               = [b.allow_write]
 enable_versioning         = b.enable_versioning
 bucket_owner_full_control = b.bucket_owner_full_control
 tags = merge(b.tags 
 
 {
   origin         = "honeycomb"
   source-data    = "user-device-events"
   business-owner = "khuram.pervez@hivehome.com"
   team           = "data-platform"
   project        = "user-device-mapping"
   gdpr-extract   = false
   gdpr-delete    = false
   description    = "Aggregated active device results"
 }
} 
