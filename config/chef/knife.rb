validation_key '/dev/null'
chef_server_url ''
knife[:aws_access_key_id]     = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:image]                 = 'ami-3d4ff254'
