set :stage, :staging
set :unicorn_rack_env, 'staging'
set :branch, :master
set :deploy_to, '/u01/apps/rs/spree-demo'
set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{deployer@52.38.156.2}
role :web, %w{deployer@52.38.156.2}
role :db, %w{deployer@52.38.156.2}
server '52.38.156.2', roles: %w{:web, :app, :db}, user: 'deployer'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}