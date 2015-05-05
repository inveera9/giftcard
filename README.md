# GiftCard

GiftCard, First Generation


## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Ruby](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm)
* [Rails](http://rubyonrails.org/download/)

## Getting giftcard setup locally

**1. Clone giftcard application from GitHub**
-  $ `git clone https://github.com/inveera9/giftcard.git`

**2. Now move to the giftcard directory and run the following commands:**
-   $ `source ~/.rvm/scripts/rvm`
-   $ `rvm use ruby-2.1.2`
-   $ `rvm gemset create giftcard`
-   $ `rvm use ruby-2.1.2@giftcard`
-   $ `sudo apt-get install postgresql`
-   $ `sudo apt-get install libpq-dev`
-   $ `gem install pg -v '0.17.1'`
-   $ `bundle install`

**3. Set up database**
-   $ `rake db:create` _# postgres database should be installed on the machine_
-   $ `rake db:migrate` _# 

**4. Run Rails server**
-   $ `rails server` _# to run rails server_


