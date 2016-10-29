class RemoveJobIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :job_id, :integer
  end
end
