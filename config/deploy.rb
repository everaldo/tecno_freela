$:.unshift './config'

require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/defaults'
require 'mina/extras'
require 'mina/app'
require 'mina/mongoid'
require 'mina/imagemagick'
require 'mina/unicorn'
require 'mina/nginx'
require 'mina/secrets'

Dir['config/mina/servers/*.rb'].each { |f| load f }


set :app, 'tecno_freela'
set :default_server, :staging
set :domain, 'staging'
set :deploy_to, '/home/tecnofreela/tecno_freela'
set :repository, 'git@github.com:everaldo/tecno_freela.git' # Needs to change to Tecnobest/tecno_freela after merging
set :branch, 'master'
set :keep_releases, 5


# Optional settings:
set :user, 'tecnofreela'    # Username in the server to SSH to.

set :server, ENV['to'] || default_server
invoke :"env:#{server}"

desc "Deploys the current version to the server."
task :deploy do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:assets_precompile'  # I don't really like assets pipeline
    
    to :launch do
      invoke :'unicorn:restart'
    end
  end
end

