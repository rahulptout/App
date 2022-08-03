class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|

      t.string :name, :limit =>45
      t.string :status 
      t.date   :release_date

      t.timestamps
    end
  end
end
