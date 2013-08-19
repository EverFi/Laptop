#!/usr/bin/env bash

echo "Checking for SSH key, generating one if it doesn't exist ..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "Copying public key to clipboard. Paste it into your Github account ..."
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
  open https://github.com/account/ssh

echo "Installing Homebrew, a good OS X package manager ..."
  ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
  brew update

echo "Installing Postgres, a good open source relational database ..."
  brew install postgres --no-python

echo "Installing ack, a good way to search through files ..."
  brew install ack

echo "Installing ImageMagick, good for cropping and re-sizing images ..."
  brew install imagemagick

#echo "Installing RVM (Ruby Version Manager) ..."
#  curl -L get.rvm.io | bash -s stable
#  echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
#  source ~/.bash_profile
echo "Installing rbenv"
  brew install rbenv
  brew install ruby-build
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
  source ~/.bash_profile

echo "Installing ruby!"
  rbenv install 2.0.0-p247
  rbenv global 2.0.0-p247

echo "Disabling RI and RDOC by default"
  echo 'gem: --no-ri --no-rdoc' >> ~/.gemrc

echo "Installing Bundler for managing Ruby libraries ..."
  gem install bundler --no-rdoc --no-ri

echo "Installing Rails to write and run web applications ..."
  gem install rails --no-rdoc --no-ri

echo "Installing the Heroku gem to interact with the http://heroku.com API ..."
  gem install heroku --no-rdoc --no-ri

echo "Installing the Taps gem to push and pull SQL databases between development, staging, and production environments ..."
  gem install taps --no-rdoc --no-ri

echo "Installing the pg gem to talk to Postgres databases ..."
env ARCHFLAGS="-arch x86_64" gem install pg --no-rdoc --no-ri

echo "Installing pow for serving apps. Symlink apps into ~/.pow to access with http://<appname>.dev"
  curl get.pow.cx | sh
