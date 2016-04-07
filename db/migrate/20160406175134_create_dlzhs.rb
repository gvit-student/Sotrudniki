class CreateDlzhs < ActiveRecord::Migration
  def change
    create_table :dlzhs do |t|
      t.string :d_name

      t.timestamps null: false
    end
  end
end
