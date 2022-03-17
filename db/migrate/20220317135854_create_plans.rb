class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.integer :steps
      t.integer :user_id
      t.integer :career_id

      t.timestamps
    end
  end
end
