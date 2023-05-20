require 'rake'

desc 'Run the application'
task :run do
  sh 'bundle exec jruby app.rb'
end

desc 'Build the JAR file'
task :jar do
  src_files = FileList['src/**/*.rb']
  dependencies = ['src', 'app.rb'] + src_files
  output_dir = File.join(__dir__, 'build')
  jar_flie = File.join(output_dir, 'myapp.jar')
  
  directory output_dir

  file jar_file => dependencies do
    sh "bundle exec warbler --output-dir '#{output_dir}'"
  end
end

desc 'Build the executable'
task :build => :jar do
  config_file = File.join(__dir__, 'config', 'launch4j.xml')
  output_dir = File.join(__dir__, 'build')
  exe_file = File.join(output_dir, 'myapp.exe')
  
  directory output_dir
  
  file exe_file => config_file do
    sh "launch4j '#{config_file}'"
  end
end