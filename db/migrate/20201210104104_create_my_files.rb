class CreateMyFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :my_files do |t|
      t.string :title
      t.string :filename
      t.string :comment

      t.timestamps
    end
  end
end
