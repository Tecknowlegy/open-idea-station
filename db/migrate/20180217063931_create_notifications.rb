class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :recipient_id
      t.integer :actor_id
      t.boolean :is_read
      t.string :action
      t.references :notifiable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
