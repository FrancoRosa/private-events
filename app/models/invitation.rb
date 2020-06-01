class Invitation < ApplicationRecord
  belongs_to :events_invited, class_name: "Event"
  belongs_to :attendee, class_name: "User"
end
