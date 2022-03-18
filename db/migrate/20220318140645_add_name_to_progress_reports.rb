class AddNameToProgressReports < ActiveRecord::Migration[6.1]
  def change
    add_column :progress_reports, :name, :string
  end
end
