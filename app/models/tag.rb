# == Schema Information
#
# Table name: tags
#
#  tag           :string           not null
#
class Tag < ApplicationRecord
  validates :tag, presence: true

  has_many :post_tags
end
