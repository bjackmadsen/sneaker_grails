class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
    	t.string :name 
    	t.string :color
    	t.string :release_date
    	t.string :price 
    	t.text :content
    	t.integer :brand_id
    end
  end
end
