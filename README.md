Blog Bootstrap Application
====================
 
Overview
--------
The application is based on [Rails](http://rubyonrails.org) 6.0.3.3 framework running on [Ruby](https://www.ruby-lang.org) 2.6.6, backended with [SQLite](https://www.sqlite.org) database engine.

Getting started - manual
------------------------
The following steps are necessary to get the application up and running locally. There is nothing to do on remote servers, because everything is setup for you already. Yay!

It is strongly recommended to use one of ruby version managers such a [RVM](https://rvm.io) which is recommended and covered here or [rbenv](https://github.com/sstephenson/rbenv) to handle different ruby versions in your system in a concurrent way.
Please note that RVM is incompatible with rbenv and they can not be isntalled together!

1. Follow the steps described in [Installing RVM](https://rvm.io/rvm/install#installing-rvm) to install RVM stable with ruby 2.6.6.

        # Install mpapis public key
        $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

        # Install RVM with ruby 2.6.6
        $ \curl -sSL https://get.rvm.io | bash -s stable --ruby=2.6.6

2. Clone the git repository.

        # Clone the repository to your computer
        $ git@github.com:lukaszmarcinkowski/blog_bootstrap_app.git

3. Change directory to the cloned one above.

        $ cd blog_bootstrap_app

4. Set a local application-specific ruby version by writing the version name to a `.ruby-version` file in the current directory (that is already done for you).

        $ echo 2.6.6 > .ruby-version
        # or
        $ rvm --ruby-version use 2.6.6

5. Make sure it is set properly.

        $ cat .ruby-version
        ruby-2.6.6

6. Install [Bundler](http://bundler.io).

        $ gem install bundler

7. Install application-specific gems located in `Gemfile`.

        $ bundle install

8. Install `yarn` to compile [webpacker](https://github.com/rails/webpacker) assets.

9. Initialize database.

        $ rails db:migrate
        
10. Load seeds.

        $ rails db:seed
        
11. That's it! If everything went smoothly then you are ready to run the application locally and make furthers deploys.

        $ rails s
        => Booting Puma
        => Rails 6.0.3.3 application starting in development
        => Run `rails server --help` for more startup options
        Puma starting in single mode...
        * Version 4.3.6 (ruby 2.6.6-p146), codename: Mysterious Traveller
        * Min threads: 5, max threads: 5
        * Environment: development
        * Listening on tcp://127.0.0.1:3000
        * Listening on tcp://[::1]:3000
        Use Ctrl-C to stop
    
urther development
-------------------
**Git branching model**

As a good practice and proven solution we do follow [a successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/) by Vincent Driessen. Please **be familiar with it before you start contributing** to this project! There is one important note here. We do have one extra branch `staging` which goes alongside the `master` branch and should be treated in the very same way.

**Main branches summary**

The central repository holds three [main branches](http://nvie.com/posts/a-successful-git-branching-model/#the-main-branches) with an infinite lifetime:
* `master`
* `staging`
* `develop`

The `develop` branch is dedicated for all developers and should contain the current state of the application code available to be run by others.

The `staging` branch is dedicated for deploying to staging server and should not be under current development on any way.

The `master` branch is dedicated for deploying to production server and should not be under current development on any way as well.

**Supporting branches summary**

Three different types of [supporting branches](http://nvie.com/posts/a-successful-git-branching-model/#supporting-branches) we may use are:
* feature
* release
* hotfix

As a rule of thumb for [feature branches](http://nvie.com/posts/a-successful-git-branching-model/#feature-branches):

        May branch off from: develop
        Must merge back into: develop
        Branch naming convention: feature-*

As a rule of thumb for [release branches](http://nvie.com/posts/a-successful-git-branching-model/#release-branches):

        May branch off from: develop
        Must merge back into: develop, staging and master
        Branch naming convention: release-*

As a rule of thumb for [hotfix branches](http://nvie.com/posts/a-successful-git-branching-model/#hotfix-branches):

        May branch off from: staging or master
        Must merge back into: develop and staging or master
        Branch naming convention: hotfix-*

As a final note here, if you'll find yourself lost in all these branches please go to the mentioned article above and read it very carefully once again, and again, and again. This should give you a clear view what to do next.
    