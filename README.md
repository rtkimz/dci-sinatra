# Digital Comics Interface

This project provides an organized web interface for easy access to a haphazardly stored collection of digital comics. This project is designed for personal use on a home LAN. It would be a terrible mistake to provide access to the Internet to your local install of this project.

## How it works / What to expect

After copying the files for the application to your system, you create the database and prepare it for the application. Then it is time to mount whatever drive has your files on it to the public/comics/ directory and scrape the information into the database. Once running, the application uses all the data to provide an organized view of your comics. The homepage shows links to the various publishers. After selecting a publisher, you are presented with a page of many of the main characters from that publisher to choose from. Clicking on a character's name will take you to a page of comic titles this character can be found in. Clicking on a title will take you to a page that displays all of the issues for this comic title that are available. Now you can easily add an issue to your comic reading device of choice. 

## Built With

* [Ruby](https://www.ruby-lang.org)
* [Sinatra](http://sinatrarb.com/)
* ActiveRecord
* [SQLite3](https://sqlite.org/index.html)

## Requirements

* [Git](https://git-scm.com/)
* [RBEnv](https://github.com/rbenv/rbenv)
* [Ruby](https://www.ruby-lang.org)
* [SQLite3](https://sqlite.org/index.html)

## Installation and setup (typical commands on a Debian based system)

* Install Git (sudo apt install git)
* Install RBEnv (sudo apt install rbenv, rbenv init)
  * this will make working with Ruby gems easier later
* Install Ruby (rbenv install 3.0.0)
  * Set the local version of Ruby to 3.0.0 (rbenv local 3.0.0)
* Install SQLite3 (sudo apt install sqlite3)
* Install Bundler (gem install bundler)
* Install all gems for this project (bundle install)
* Mount where your comics are located (sudo mount /dev/sda1 /srv/dci-sinatra/public/comics/)
  * If you reboot your server, you will likely need to mount this again
** Each of the following commands should be run from inside the dci-sinatra directory **
* Create the database (rake db:create)
* Run migrations on the database (rake db:migrate)
* Scrape the contents of your comics into the database (ruby scrape.rb)
  * depending on how many files you have, this may take a while (like, a minute per couple hundred)
* Start the server (bundle exec rackup -p 4567 -o 0.0.0.0)
  * the "-o 0.0.0.0" option is used to bind to any port so that computers on the same LAN can access the server (ie http://192.168.1.15:4567 )
** AGAIN, THIS SOFTWARE IS DESIGNED TO ONLY RUN ON A LAN, NOT INTERNET ACCESSIBLE!

## TO-DO

* Make comics viewable (like a slideshow of pages) in the browser
* Add more characters to the data file
* clean up the interface

## Author

* **RTKimz** - *Initial work* - [rtkimz](https://github.com/rtkimz)

See also the list of [contributors](https://github.com/rtkimz/dci-sinatra/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
