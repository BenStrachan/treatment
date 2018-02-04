class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :description
      t.string :question
      t.string :result_type
      t.string :result_unit

      t.timestamps
    end
  end
end
