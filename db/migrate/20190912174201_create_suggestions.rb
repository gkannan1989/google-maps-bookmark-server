class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.string :query
      t.string :key

      t.timestamps
    end
  end
end
