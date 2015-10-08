class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :question_id
      t.string :question_response

      t.timestamps null: false
    end
  end
end
