require 'rubygems'
require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/bank.db")

class Clients
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :total_sales, Fixnu
end

DataMapper.finalize

Clients.auto_upgrade!