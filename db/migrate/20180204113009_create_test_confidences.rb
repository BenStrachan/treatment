class CreateTestConfidences < ActiveRecord::Migration[5.1]
  def change
    create_table :test_confidences do |t|
      t.string :test
      t.string :test_result
      t.string :confidence_rating

      t.timestamps
    end
  end
end
