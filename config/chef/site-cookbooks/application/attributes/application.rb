# Hostname
#
override.set_fqdn = 'rails3-base.flatstack.com'

# Deployer ssh keys
#
override.users.deployer.ssh_keys = 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAw+n/Z2kpypd1NVZ3OC8OBy0T5UNs008Tl9neQjp3X9Tx5VZgamczSKx6qHVvE/sOKk17CeInqZQhscyPWNUFRXKUFqSeQp2xff8YS2GlxTTsdBv6MJahA6T569K9iJNaki9VphQ+PIvauV6WrMlXHn0KIK+36l7vnqr19eqwfgKSehgrn+Jo0N3JH7HmY7hohwvgvtUFyTs8tAHv8L8NTH4x30H4UB0vzBGuSWLnSiukTJ5Ut9qZGXHFCBwche2h3aDCxsrVuIg+FLYOI98P78tSr+6aV1dTIYSCe8nDNkpBJvpH0jwuYs956PY4jJIa+yFtopuYCqbR2biinOLy5Q=='

# Ruby version
#
# override.ruby.version = '1.9.3-p194'

# Bundler version
#
# override.ruby.bundler_version = '1.0.18'

# Rails application settings
#
override.rails.application.name = 'rails3-base'
override.rails.application.root_prefix = '/var/www'
override.rails.application.domain = 'rails3-base.flatstack.com'
override.rails.application.environment = 'production'
override.rails.application.packages = ['libxml2-dev']

# Unicorn settings
#
# override.rails.application.unicorn.workers = 2
# override.rails.application.unicorn.timeout = 60


# Postgres
#
# override.postgresql.password.postgres = ''
