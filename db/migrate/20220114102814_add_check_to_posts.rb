class AddCheckToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :check, :boolean
  end
end
