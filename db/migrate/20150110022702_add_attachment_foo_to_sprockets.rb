class AddAttachmentFooToSprockets < ActiveRecord::Migration
  def self.up
    change_table :sprockets do |t|
      t.attachment :foo
    end
  end

  def self.down
    remove_attachment :sprockets, :foo
  end
end
