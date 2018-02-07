class RemoveFieldsFromTests < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :question
  end
end
