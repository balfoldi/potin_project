require 'dotenv'
require 'csv'
require 'json'
require 'nokogiri'
require 'google_drive'
require 'launchy'
require 'pry'
require 'open-uri'
require 'time'
require 'date'
require 'bundler'
require 'lib/router.rb'
require 'lib/controller.rb'
Bundler.require

routin = Router.new

routin.perform

#