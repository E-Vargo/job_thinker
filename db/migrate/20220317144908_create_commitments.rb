class CreateCommitments < ActiveRecord::Migration[6.1]
  def change
    create_table :commitments do |t|
      t.integer :plan_id
      t.integer :user_id
      t.string :type
      t.integer :passion_level

      t.timestamps
    end
  end
end
