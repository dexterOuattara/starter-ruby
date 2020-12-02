class AddCategoryToPin < ActiveRecord::Migration[6.0]
  def change
    add_reference :pins, :category, null: false, foreign_key: true
  end
end
