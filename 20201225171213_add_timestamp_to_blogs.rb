class AddTimestampToBlogs < ActiveRecord::Migration[6.1]
  def change
#     add_timestamps :blogs, null: true
# # backfill existing record with created_at and updated_at
#   # values making clear that the records are faked
#   long_ago = DateTime.new(2020, 12, 29)
#   Blog.update_all(created_at: long_ago, updated_at: long_ago)
# # change not null constraints
#   change_column_null :blogs, :created_at, false
#   change_column_null :blogs, :updated_at, false
  end
end
