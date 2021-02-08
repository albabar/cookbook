#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sinatra'
require_relative 'recipe'

configure { set :server, :puma }

class Cookbook < Sinatra::Base
  get '/' do
    recipes = Recipe.all
    erb :index, locals: { recipes: recipes }
  end
end
