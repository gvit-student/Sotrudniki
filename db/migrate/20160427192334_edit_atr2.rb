class EditAtr2 < ActiveRecord::Migration
  def change
  	add_column :dlzhs, :s_delete, :boolean
  	add_column :sotrs, :s_delete, :boolean
  	add_column :hobbies, :s_delete, :boolean
  	add_column :hobby_sotrs, :s_delete, :boolean
  end
end
