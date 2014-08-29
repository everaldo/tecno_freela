
###########################################################################
# Mongoid Tasks
###########################################################################

require 'mina/scp'

namespace :mongoid do
  desc "Upload and update (link) Mongoid config"
  task :upload do
    template = "#{config_templates_path}/mongoid.yml"
    destination = "#{config_path}/mongoid.yml"
    scp_upload template, destination
    queue check_exists(destination)
  end

  namespace :parse do
    desc "Parses Mongoid config file and shows it in output"
    task :config do
      puts "#"*80
      puts "# mongoid.yml"
      puts "#"*80
      puts File.read("#{config_templates_path}/mongoid.yml")
    end
  end
end

