class AddReferenceToEstablishment < ActiveRecord::Migration
  def change
  	add_column :establishments, :user_id, :integer
  	add_column :products, :categorie_id, :integer
  end
end
