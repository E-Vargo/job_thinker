class AddDesciprtionToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :description, :text
  end
end
