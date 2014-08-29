###########################################################################
# Secrets Tasks
###########################################################################

require 'mina/scp'

namespace :secrets do
  desc "Upload and update (link) secrets.yml file"
  task :upload do
    template = "config/secrets.yml"
    destination = "#{config_path}/secrets.yml"
    scp_upload template, destination
    queue check_exists(destination)
  end

  desc "Parses secrets.yml file and shows it in output"
  task :parse do
    puts "#"*80
    puts "# secrets.yml"
    puts "#"*80
    puts File.read("config/secrets.yml")
  end
end

