class AddScoreToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :score, :integer
  end
end
