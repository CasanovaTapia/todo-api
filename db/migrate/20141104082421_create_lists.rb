class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :permission, default: 'private'
      t.references :user, index: true

      t.timestamps
    end
  end
end
