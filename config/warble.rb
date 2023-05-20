Warbler::Config.new do |config|
  config.jar_name = "app"
  config.executable = "app.rb"
  config.excludes += FileList["build/*", "tmp/*", ".git/*"]
  config.includes = FileList["config/*.yml"]
end
