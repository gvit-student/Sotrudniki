class EditAtr1 < ActiveRecord::Migration
  def change
  	add_column :dlzhs, :status, :boolean
  	add_column :sotrs, :status, :boolean
  	add_column :hobbies, :status, :boolean
  	add_column :hobby_sotrs, :status, :boolean
  end
end
