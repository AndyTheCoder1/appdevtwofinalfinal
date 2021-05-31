class CreateDateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :date_requests do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :acceptance
      t.boolean :weekly_rose

      t.timestamps
    end
  end
end
