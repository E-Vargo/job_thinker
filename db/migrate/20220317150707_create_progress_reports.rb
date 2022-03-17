class CreateProgressReports < ActiveRecord::Migration[6.1]
  def change
    create_table :progress_reports do |t|
      t.integer :career_id
      t.integer :user_id
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
