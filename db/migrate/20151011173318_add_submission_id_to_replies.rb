class AddSubmissionIdToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :submission_id, :integer
  end
end
