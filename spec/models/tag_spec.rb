require 'rails_helper'

RSpec.describe Tag, type: :model do
  it "is valid with tag" do
    tag = Tag.new(tag: 'test')
    expect(tag).to be_valid
  end

  it "is invalid without tag" do
    tag = Tag.new(tag: nil)
    expect(tag).to_not be_valid
  end
end
