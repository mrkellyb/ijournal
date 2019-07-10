class Session < ApplicationRecord
  has_many :actions, dependent: :destroy
  belongs_to :user
end
