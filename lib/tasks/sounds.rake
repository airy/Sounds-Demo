namespace :sounds do
  desc "Generates public/stylesheets/application.css from app/stylesheets/application.less"
  task :css do
    system "lessc app/stylesheets/application.less public/stylesheets/application.css"
  end
  
  desc "Runs css & rails-ujs tasks"
  task :setup do
    system "rake jquery:install"
    system "rake sounds:css"
  end
  
  
end
