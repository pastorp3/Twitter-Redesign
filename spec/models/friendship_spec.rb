# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Friendship, type: :model do
  User.delete_all

  it '1. FAIL CHECK - Checks if a friendship can be created' do
    test_f = Friendship.create(user_id: nil, friend_id: nil)
    expect(test_f).to be_invalid
  end

  it '2. SUCCESS CHECK - Checks if a friendship can be created' do
    User.create(email: 'test2@test.com', username: 'mateo', password: 'this is a password')
    test_u1 = User.first
    User.create(email: 'test@test.com', username: 'pastor', password: 'this is a password')
    test_u2 = User.last
    test_f = Friendship.create(user_id: test_u1.id, friend_id: test_u2.id, status: false)
    expect(test_f).to be_valid
  end
end
