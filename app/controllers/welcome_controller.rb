# frozen_string_literal: true

class WelcomeController < ApplicationController
  def home
    @articles = Article.last(3)
  end
end
