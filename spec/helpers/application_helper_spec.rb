require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  User.delete_all
  Friendship.delete_all

  it '1. SUCCESS CHECK - Checks if a user have followers' do
    User.create(email: 'test2@test.com', username: 'mateo', password: 'this is a password')
    test_u1 = User.first
    User.create(email: 'test@test.com', username: 'pastor', password: 'this is a password')
    test_u2 = User.last
    Friendship.create(user_id: test_u1.id, friend_id: test_u2.id)
    expect(followers(test_u2).class).to be(Integer)
  end

  it '2. SUCCESS CHECK - Checks if a user is following another user' do
    User.create(email: 'test2@test.com', username: 'mateo', password: 'this is a password')
    test_u1 = User.first
    User.create(email: 'test@test.com', username: 'pastor', password: 'this is a password')
    test_u2 = User.last
    Friendship.create(user_id: test_u2.id, friend_id: test_u1.id)
    expect(following(test_u2).class).to be(Integer)
  end
end
