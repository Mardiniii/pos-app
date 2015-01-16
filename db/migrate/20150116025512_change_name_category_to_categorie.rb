class ChangeNameCategoryToCategorie < ActiveRecord::Migration
  def change
  	rename_table :categories, :categorys
  end
end
