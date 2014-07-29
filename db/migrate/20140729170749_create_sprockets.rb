class CreateSprockets < ActiveRecord::Migration
  def change
    create_table :sprockets do |t|
      t.references :user, index: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
