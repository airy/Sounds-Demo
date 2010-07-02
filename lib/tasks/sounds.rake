namespace :sounds do
  desc "Generates public/stylesheets/application.css from app/stylesheets/application.less"
  task :css do
    system "lessc app/stylesheets/application.less public/stylesheets/application.css"
  end

  desc "Downloads rails-ujs from github"
  task :ujs  do
    system "wget http://github.com/rails/jquery-ujs/raw/master/src/rails.js -P public/javascripts/"
  end

  
  desc "Runs css & ujs tasks"
  task :setup do
    system "rake sounds:ujs"
    system "rake sounds:css"
  end
  
  
end
