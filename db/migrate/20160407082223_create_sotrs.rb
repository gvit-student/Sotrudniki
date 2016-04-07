class CreateSotrs < ActiveRecord::Migration
  def change
    create_table :sotrs do |t|
      t.string :s_fam
      t.string :s_name
      t.string :s_otch
      t.date :s_date
      t.belongs_to :dlzh, index: true, foreign_key: true
      t.string :s_photo

      t.timestamps null: false
    end
  end
end
