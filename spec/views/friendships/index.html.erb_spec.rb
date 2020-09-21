require 'rails_helper'

RSpec.describe "friendships/index", type: :view do
  before(:each) do
    assign(:friendships, [
      Friendship.create!(),
      Friendship.create!()
    ])
  end

  it "renders a list of friendships" do
    render
  end
end
