class CreateFeelings < ActiveRecord::Migration[5.0]
  def change
    create_table :feelings do |t|
      t.string :reaction, null: false
      t.string :current, null: false
      t.timestamps
    end
  end
end
