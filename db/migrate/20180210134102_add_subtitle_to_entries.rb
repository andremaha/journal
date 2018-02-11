class AddSubtitleToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :subtitle, :string
  end
end
