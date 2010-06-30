namespace :jquery do
  desc "Install & Update rails-ujs"
  task :install do
    system "wget http://github.com/rails/jquery-ujs/raw/master/src/rails.js -P public/javascripts/"
  end
end
