set :rvm_ruby_string, :local
set :rvm_ruby_version, "ruby-2.6.2@chatapp"
set :application, 'ChatApp'
set :repo_url, 'git@github.com:mlefrancois19/chat-app.git'

set :format, :pretty
set :log_level, :debug

# set :pty, true

set :linked_files, %w{config/application.yml config/database.yml config/secrets.yml}
set :linked_dirs, %w{tmp/pids tmp/sockets log}
set :deploy_to, '/home/web/apps/mlefrancois/chatapp'

set :keep_releases, 3