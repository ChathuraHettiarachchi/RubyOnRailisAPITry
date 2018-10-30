# frozen_string_literal: true

# Article model
class Article < ApplicationRecord
  validates :title, uniqueness: true
  validates :body, presence: true
end
