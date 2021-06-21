# == Schema Information
#
# Table name: posts
#
#  day           :date             not null
#  result        :integer          not null
#  caption       :text             not null
#
class Post < ApplicationRecord
  validates :day, presence: true
  validates :result, presence: true
  # enum result: {
  #   on_site: 0,
  #   red_point: 1,
  #   flash: 2,
  #   send: 3,
  #   project: 4,
  # }
  
  has_many :post_tags
end
