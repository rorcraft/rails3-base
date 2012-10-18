#!/bin/sh

fail() {
  echo "Error: $*"
  exit 1
}

[ -z "$1" ] && fail "You need to at least specify AWS Key to log into instance (-S YourName)"
knife ec2 server create -x ubuntu $@

cat << EOF
If you see the 'Chef::Exceptions::InvalidPrivateKey' exception above, it is ok otherwise something is wrong.

Take note of Instance ID and Public IP Address to further manage your instance.
You can see the list of instances with \`knife ec2 server list\`
EOF
