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

  puts <<-EOS
Payload
-------

#{payload.pretty_inspect}

Token: #{params[:token]}
  EOS

  201
end
