class Profile < ApplicationRecord
  belongs_to :user
  delegated_type :profileable, types: %w[ Programmer Designer ]
end
