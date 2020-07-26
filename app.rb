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
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'
require 'controller'
require 'view'
require 'gossip'

routin = Router.new #creation d'une instancede classe

routin.perform

#