class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :username


      t.timestamps null: false
    end
    add_column :recipes, :user_id, :integer
  end
end
