###########################################################################
# ImageMagick Tasks
###########################################################################

namespace :imagemagick do
  desc "Install ImageMagick"
  task :install do
    queue echo_cmd 'sudo apt-get update -y'
    queue echo_cmd 'sudo apt-get install -y imagemagick libmagickcore-dev libmagickwand-dev'
  end
end

