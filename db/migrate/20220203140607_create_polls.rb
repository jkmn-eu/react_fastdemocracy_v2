class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.datetime :expiry_date
      t.datetime :deletion_date
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
