# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comments

  self.per_page = 3
end
