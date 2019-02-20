Laptop
======

Laptop is a script to set up a Mac OS X or Linux laptop for rbus development.  It is both inspired from and depends on [thoughtbot/laptop](https://github.com/thoughtbot/laptop).  This is not a fork.  This just starts where thoughtbot/laptop finishes and takes us the rest of the way through.

To setup your mac -

0.  Update the mac to the latest version of osx, install `xcode` from the app store.  Run xcode once and agree to the `T&C`.
1.  Drop a private key file `github` at `~/.ssh/github`.  This should be able to access your github account.
    You can generate a fresh one by using `mkdir -p ~/.ssh && ssh-keygen -f ~/.ssh/github && ssh-add -K ~/.ssh/github` and then upload the `~/.ssh/github.pub` to [https://github.com/settings/ssh](https://github.com/settings/ssh)
2. Run the following:

`bash <(curl -s https://github.com/anshul/laptop/mac) 2>&1 | tee /tmp/install.log`

After this, you can simply run `laptop-update` from your home directory to stay
updated and `laptop-install` to run the whole process again.


What it sets up
---------------

By thoughtbot:

* [Bundler] for managing Ruby libraries
* [Exuberant Ctags] for indexing files for vim tab completion
* [Foreman] for serving Rails apps locally
* [Heroku Config] for local `ENV` variables
* [Heroku Toolbelt] for interacting with the Heroku API
* [Hub] for interacting with the GitHub API
* [Homebrew] for managing operating system libraries (OS X only)
* [ImageMagick] for cropping and resizing images
* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [NVM] for managing versions of Node.js
* [Parity] for development, staging, and production parity
* [Postgres] for storing relational data
* [Qt] for headless JavaScript testing via Capybara Webkit
* [Rails] gem for writing web applications
* [Rbenv] for managing versions of Ruby
* [Redis] for storing key-value data
* [Ruby Build] for installing Rubies
* [Ruby] stable for writing general-purpose code
* [The Silver Searcher] for finding things in files
* [Tmux] for saving project state and switching between projects
* [Watch] for periodically executing a program and displaying the output
* [Zsh] as your shell

By rbus:
* [vimrc]
* [sublime]
* [google-chrome]
* [firefox]
* [dropbox]

