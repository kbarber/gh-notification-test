#!/usr/bin/env ruby

require 'sinatra'
require 'pp'
require 'json'

post '/github' do
  payload = nil
  begin
    payload = JSON.parse(params[:payload])
  rescue
    payload = params
  end
  puts payload.pretty_inspect
  201
end
