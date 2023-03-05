require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a name attribute" do
    category = Category.new
    expect(category).not_to be_valid
    expect(category.errors[:name]).to include("can't be blank")
  end
end
