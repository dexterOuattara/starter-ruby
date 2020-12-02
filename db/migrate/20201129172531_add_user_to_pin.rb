class AddUserToPin < ActiveRecord::Migration[6.0]
  def change
    add_column :pins, :user, :reference
  end
end
