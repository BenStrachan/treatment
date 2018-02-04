class CreateTestConclusions < ActiveRecord::Migration[5.1]
  def change
    create_table :test_conclusions do |t|
      t.string :test
      t.string :diagnosis
      t.string :conclusion_rating

      t.timestamps
    end
  end
end
