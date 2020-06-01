class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :events_invited
      t.references :attendee
      t.timestamps
    end
  end
end
