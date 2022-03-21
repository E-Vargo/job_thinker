class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :commitments, :type, :name 
  end
end
