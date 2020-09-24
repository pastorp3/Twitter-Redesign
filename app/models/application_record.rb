# rubocop: disable all

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# rubocop: enable all
