#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sinatra'

configure { set :server, :puma }

class Cookbook < Sinatra::Base
  get '/' do
    'Testing my Heart'
  end
end
