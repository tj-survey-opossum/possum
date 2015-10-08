class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :question_id
      t.string :question_reply

      t.timestamps null: false
    end
  end
end
