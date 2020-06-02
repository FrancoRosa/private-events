class User < ApplicationRecord
  has_many :events_created, class_name: 'Event', foreign_key: :user_id
  
  has_many :invitations, foreign_key: :attendee_id
  has_many :events_invited, through: :invitations
  validates :name, presence: true, uniqueness: true
end

# class User < ActiveRecord::Base
#   has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"

#   has_many :post_authorings, foreign_key: :post_author_id
#   has_many :authored_posts, through: :post_authorings
# end


# rails g migration add_author_id_to_events creator_id:integer 