class RemoveBookCommentIdFromBookComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :book_comments, :book_comment_id, :integer
  end
end
