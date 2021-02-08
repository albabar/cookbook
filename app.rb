#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sinatra'
require_relative 'services/recipe'
require_relative 'services/markdown'

configure { set :server, :puma }

class Cookbook < Sinatra::Base
  get '/' do
    recipes = Recipe.all
    erb :index, locals: { recipes: recipes }
  end

  get '/recipe/:id' do
    recipe = Recipe.find(params[:id])
    erb :recipe, locals: { recipe: recipe }
  end
end
