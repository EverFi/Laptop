Laptop
======

Script to get your laptop set up as a development machine targeted for the developing for EverFi

This script is assuming that you are using a Mac running OS X 10.6 or higher.

Mac OS X
--------

First, install [GCC for OS X](https://github.com/kennethreitz/osx-gcc-installer). (requires OS X 10.6 or higher)
OR Install XCode


Then, run this one-liner:

    bash < <(curl -s https://raw.github.com/EverFi/Laptop/master/setup_dev_env.sh)

What it sets up
---------------

* SSH public keys (for authenticating with services like Github and Heroku)
* Homebrew (for managing operating system libraries)
* Ack (for finding things in files)
* Postgres (for storing relational data)
* ImageMagick (for cropping and resizing images)
* rbenv (for managing versions of the Ruby programming language)
* Ruby 2.2.0 stable (for writing general-purpose code)
* Bundler gem (for managing Ruby libraries)
* Rails gem (for writing web applications)
* Heroku gem (for interacting with the Heroku API)
* Taps gem (for pushing and pulling SQL databases between environments)
* Postgres gem (for making Ruby talk to SQL databases)

It should take about 30 minutes for everything to install, depending on your machine.

This was forked from Thoughbot(see https://github.com/thoughtbot/laptop)  and basterdized for our own env. Thanks Thoughtbot!
