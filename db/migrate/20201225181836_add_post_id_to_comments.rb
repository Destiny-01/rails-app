class AddPostIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :, :integer
  end
end
