# frozen_string_literal: true

json.extract! friendship, :id, :created_at, :updated_at
json.url friendship_url(friendship, format: :json)
