# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def default_url_options(options={})
    { :locale => I18n.locale == I18n.default_locale ? nil : I18n.locale  }
  end
end
