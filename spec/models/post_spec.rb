require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with day, result and caption" do
    post = Post.new(day: Date.today, result: 0, caption: "It's a nice route!")
    
    expect(post).to be_valid
  end

  it "is invalid without day" do
    post = Post.new(day: nil)

    expect(post).to_not be_valid
  end

  it "is invalid without result" do
    post = Post.new(result: nil)

    expect(post).to_not be_valid
  end
end
