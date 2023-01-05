class Article < ApplicationRecord
  attr_accessor :no_of_likes
  belongs_to :user
end
