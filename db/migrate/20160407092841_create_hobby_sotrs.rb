class CreateHobbySotrs < ActiveRecord::Migration
  def change
    create_table :hobby_sotrs do |t|
      t.belongs_to :sotr, index: true, foreign_key: true
      t.belongs_to :hobby, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
