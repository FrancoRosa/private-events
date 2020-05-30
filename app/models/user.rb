class User < ApplicationRecord
  has_many :events_created, dependent: :destroy, foreign_key: 'user_id', class_name: 'Event'
end
