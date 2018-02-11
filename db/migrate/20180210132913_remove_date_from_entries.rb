class RemoveDateFromEntries < ActiveRecord::Migration[5.1]
  def change
     remove_column :entries, :date, :date
  end
end
