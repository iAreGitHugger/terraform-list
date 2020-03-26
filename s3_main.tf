users = [
  {
    name        = "netf"
    pubkey_file = "public_ssh_keys/netf.pub"
    access_ips = [ "91.202.126.72/32", "188.146.32.62/32" ]
  },

"s3_list"
    namespace                 = var.namespace
    stage                     = var.stage
    delimiter                 = var.delimiter

    {#
        name =
        "test-1"
        cloudtrail  = true
        allow_read  = ["arn:aws:iam::047625233815:user/netf", "arn:aws:iam::047625233815:user/mprofir"]
        allow_write = ["arn:aws:iam::047625233815:user/mprofir"]
        tags = {
          Project     = "test"
          Owner       = "test"
          Importance  = "low"
          OtherTag    = "GreatTag"
          AnOtherTag  = "NotGreatTag"
        }
      },
      {#test-bucket-2
        enabled     = true
        namespace                 = var.namespace
        stage                     = var.stage
        delimiter                 = var.delimiter
        name        = "test-2"
        cloudtrail  = true
        allow_read  = ["arn:aws:iam::047625233815:user/netf", "arn:aws:iam::047625233815:user/mprofir"]
        allow_write = ["arn:aws:iam::047625233815:user/mprofir"]
        tags = {
          Project     = "test"
          Owner       = "test"
          Importance  = "low"
          OtherTag    = "GreatTag"
          AnOtherTag  = "NotGreatTag"
        }
      }
  - test-bucket-3

  ]