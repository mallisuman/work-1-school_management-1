class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|

      t.timestamps
    end
  end
end
