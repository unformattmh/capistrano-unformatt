namespace :deploy do
  namespace :unicorn do
    desc "Starts unicorn"
    task :start do
      on roles :app do
        execute "#{daemons_path}/#{fetch(:application)}-unicorn start"
      end
    end

    desc "Stops unicorn"
    task :stop do
      on roles :app do
        execute "#{daemons_path}/#{fetch(:application)}-unicorn stop"
      end
    end

    desc "Starts unicorn"
    task :restart do
      on roles :app do
        execute "#{daemons_path}/#{fetch(:application)}-unicorn restart"
      end
    end

    desc "Reloads unicorn"
    task :reload do
      on roles :app do
        execute "#{daemons_path}/#{fetch(:application)}-unicorn reload"
      end
    end
  end
end
