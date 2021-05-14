#!/usr/bin/env ruby

require 'sqlite3'
require 'sinatra/activerecord'
require './config/environment.rb'

puts RarFile.is_rar_file?("public/comics/Comix/2021.02.10 Weekly Pack/2021.02.10 INDIE Week/The Last Witch 02 (of 05) (2021) (digital) (Son of Ultron-Empire).cbr")

fork { exec("cd public/.tmp && unrar e '../comics/Comix/2021.02.10 Weekly Pack/2021.02.10 INDIE Week/The Last Witch 02 (of 05) (2021) (digital) (Son of Ultron-Empire).cbr'")}