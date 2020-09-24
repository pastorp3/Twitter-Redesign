require 'rails_helper'



RSpec.describe Post, type: :model do
  User.delete_all
  Post.delete_all
  it '1. FAIL CHECK - Checks if a user can be created' do
    test_p = Post.create(content: nil, user_id: nil)
    expect(test_p).to be_invalid
  end

  it '2. SUCCESS CHECK - Checks if a user can be created' do
    User.create(email: 'test2@test.com', username: 'pastor', password: 'this is a password')
    test_u = User.first
    test_p = Post.create(content: 'This is a test post', user_id: test_u.id)
    expect(test_p).to be_valid
  end
end
