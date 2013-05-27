class JobRenameCommentToDescription < ActiveRecord::Migration
  def change
    rename_column :jobs, :comment, :description
  end
end
