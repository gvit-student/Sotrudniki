class CreatePopHobbies < ActiveRecord::Migration
  def change
    create_table :pop_hobbies do |t|

      t.timestamps null: false
    end
  end
end
