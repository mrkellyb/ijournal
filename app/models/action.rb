class Action < ApplicationRecord
  belongs_to :session
  has_many :action_tags, dependent: :destroy
  has_many :tags, through: :action_tags
end
