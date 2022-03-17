class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :field
      t.boolean :competitive
      t.integer :avg_salary
      t.string :typical_personality

      t.timestamps
    end
  end
end
