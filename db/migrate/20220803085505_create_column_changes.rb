class CreateColumnChanges < ActiveRecord::Migration[7.0]
  def change
    add_column("people","blood_group",:string,:limit => 5)
    change_column("people","email",:string,:limit => 30)
    rename_table("blogs","alogs")


  end
end
