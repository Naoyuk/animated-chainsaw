# == Schema Information
#
# Table name: tags
#
#  post_id       :integer          not null
#  tag_ida       :integer          not null
#
class PostTag < ApplicationRecord
  validates :post_id, presence: true
  validates :tag_id, presence: true

  belongs_to :post
  belongs_to :tag
end
