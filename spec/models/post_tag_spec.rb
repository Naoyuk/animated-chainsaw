require 'rails_helper'

RSpec.describe PostTag, type: :model do
  it "is valid with post_id and tag_id" do
    post_tag = FactoryBot.create(:post_tag)
    puts "This post_tag's post is #{post_tag.post.inspect}"
    puts "This post_tag's tag is #{post_tag.tag.inspect}"

    expect(post_tag).to be_valid
  end

  it "is invalid without post_id" do
    post_tag = FactoryBot.build(:post_tag, post_id: nil)

    expect(post_tag).to_not be_valid
  end

  it "is invalid without tag_id" do
    post_tag = FactoryBot.build(:post_tag, tag_id: nil)

    expect(post_tag).to_not be_valid
  end
end
