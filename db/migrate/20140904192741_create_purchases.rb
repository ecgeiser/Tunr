class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user, index: true
      t.references :song, index: true
      t.timestamps
    end
  end
end
