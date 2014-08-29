namespace :app do
  desc "Application error logs"
  task :logs do
    queue 'echo "----->  App Logs"'
    queue echo_cmd "tail -500 #{logs_path}/#{rails_env}.log"
  end
end
