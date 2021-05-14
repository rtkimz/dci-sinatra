# Digital Comics Interface

This project provides an organized web interface for easy access to a haphazardly stored collection of digital comics. This project is designed for personal use on a home LAN. It would be a terrible mistake to provide access to the Internet to your local install of this project.

## How it works / What to expect

After copying the files for the application to your system, you create the database and prepare it for the application. Then it is time to mount whatever drive has your files on it to the public/comics/ directory and scrape the information into the database. Once running, the application uses all the data to provide an organized view of your comics. The homepage shows links to the various publishers. After selecting a publisher, you are presented with a page of many of the main characters from that publisher to choose from. Clicking on a character's name will take you to a page of comic titles this character can be found in. Clicking on a title will take you to a page that displays all of the issues for this comic title that are available. Now you can easily add an issue to your comic reading device of choice. 

## Built With

* [Ruby](https://www.ruby-lang.org)
* [Sinatra](http://sinatrarb.com/)
* ActiveRecord

## Requirements



## Author

* **RTKimz** - *Initial work* - [rtkimz](https://github.com/rtkimz)

See also the list of [contributors](https://github.com/rtkimz/dci-sinatra/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
