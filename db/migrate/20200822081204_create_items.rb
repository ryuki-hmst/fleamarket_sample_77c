class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null:false, index:true
      t.text :detail, null:false
      t.integer :price, null:false, index:true
      t.string :size
      t.references :seller, type: :integer, null:false
      t.references :order, type: :integer
      t.references :category, type: :integer, null:false
      t.references :brand, type: :integer
      t.timestamps
    end
  end
end