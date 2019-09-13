class CreateThirdPartyApis < ActiveRecord::Migration[6.0]
  def change
    create_table :third_party_apis do |t|
      t.string :query
      t.string :key

      t.timestamps
    end
  end
end
