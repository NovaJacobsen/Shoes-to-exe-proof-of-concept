Warbler::Config.new do |config|
  config.jar_name = "build/Hello World"
  config.executable = "app.rb"
  config.excludes += FileList["build/", "Rakefile", ".git/*", "Gemfile*", "config/"]
end
