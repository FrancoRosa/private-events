class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  
  has_many :invitations, foreign_key: :events_invited_id
  has_many :attendees, through: :invitations, source: :attendee
  validates :title, presence: true, uniqueness: true

  def self.rforward
    Faker::Date.forward(days:rand(10))
  end

  def self.rbackward
    Faker::Date.backward(days:rand(10))
  end

end 

# class Post < ActiveRecord::Base
#   belongs_to :editor, class_name: "User"

#   has_many :post_authorings, foreign_key: :authored_post_id
#   has_many :authors, through: :post_authorings, source: :post_author
# end