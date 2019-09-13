class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :type
      t.float :lat
      t.float :lng
      t.string :title
      t.boolean :editable
      t.integer :idx

      t.timestamps
    end
  end
end
