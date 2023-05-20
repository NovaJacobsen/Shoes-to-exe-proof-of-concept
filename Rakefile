require 'rake'

source_dir = File.join(__dir__, 'src')
output_dir = File.join(__dir__, 'build')
jar_file = File.join(output_dir, 'Hello World.jar')
exe_file = File.join(output_dir, 'Hello World.exe')
launch4j_config = File.join(__dir__, 'config', 'launch4j.xml')

directory output_dir

file jar_file => [source_dir, 'app.rb', output_dir] do
  sh "bundle exec warble"
end

file exe_file => [launch4j_config, jar_file] do
  sh "launch4j '#{launch4j_config}'"
end

desc 'Run the application'
task :run do
  sh 'bundle exec jruby app.rb'
end

desc 'Build jar only'
task :jar => jar_file

desc 'Build project'
task :build => exe_file

desc 'Clean build artifacts'
task :clean do
  rm_rf output_dir
end