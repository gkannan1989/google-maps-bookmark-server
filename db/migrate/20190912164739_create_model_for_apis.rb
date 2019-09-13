class CreateModelForApis < ActiveRecord::Migration[6.0]
  def change
    create_table :model_for_apis do |t|

      t.timestamps
    end
  end
end
