# frozen_string_literal: true

json.array! @friendships, partial: 'friendships/friendship', as: :friendship
