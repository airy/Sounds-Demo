namespace :sounds do
  desc "Generates public/stylesheets/application.css from app/stylesheets/application.less"
  task :css do
    system "lessc app/stylesheets/application.less public/stylesheets/application.css"
  end
end
