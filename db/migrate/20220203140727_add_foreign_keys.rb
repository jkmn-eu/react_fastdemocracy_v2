class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    # adds reference to users in polls & reference to polls in questions
    add_column :polls, :user_id, :integer
    add_column :questions, :poll_id, :integer
    add_foreign_key :polls, :users
    add_foreign_key :questions, :polls
  end
end
