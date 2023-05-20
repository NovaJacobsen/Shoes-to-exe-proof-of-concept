# Shoes-to-exe-proof-of-concept
This repo can be used as a baseline for making a windows application with shoes 4.

## Installing
Simply clone the repo with git clone or [download](https://github.com/NovaJacobsen/Shoes-to-exe-proof-of-concept/archive/refs/heads/main.zip).

You'll need jruby to run the project. All other dependencies can be installed with bundler, by running the command `bundle install` in the project directory.

## Running
To test your application without bundling the executable you can use the `run` rake task with `bundle exec rake run` Invoking the project this way ensures you're using the gems
in the Gemfile for the project, such that it won't end up looking different when bundled.

## Building
To bundle your application into a .exe file simply run the `build` rake task with `bundle exec rake build` This will create both a .jar and .exe file in the /build folder (which it will also make if it's missing)

If you only want the jar file you can use the `jar` rake task instead. `bundle exec rake jar` This will run the same process as above but stop after making just the jar file.

There's also a task to clean all build artifacts `bundle exec rake clean` - this simply deletes the build folder.

## Adding more
From here you can do anything you want with the application. If you need to add a gem to the project simply use the Gemfile. If you want more source code files create a folder named src to put them in.

Any file in the src subfolder will be automatically added to the build process. Just make sure you load them in app.rb using the require keyword!

If you need to include more than just source code in the jar, you'll have to make the relevant changes to the `config/warble.rb` file yourself.
