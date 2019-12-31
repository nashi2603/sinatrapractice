require 'fileutils'

CREATE_DIR = [
    'tmp/pids',
    'tmp/sockets',
    'logs'
]

CREATE_DIR.each do |path|
    make_path = File.join(path)
    FileUtils.mkdir_p(make_path) unless Dir.exist?(make_path)
end

bind 'tcp://127.0.0.1:7890'
pidfile 'tmp/pids/puma.pid'
state_path 'tmp/pids/puma.state'
stdout_redirect 'log/app.log', 'log/app_err.log', true
threads 0, 8
rackup 'config.ru'
daemonize false
activate_control_app

