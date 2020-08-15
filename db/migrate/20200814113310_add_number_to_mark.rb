class AddNumberToMark < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :number, :string
    add_column :marks, :subject_id, :string
    add_column :marks, :student_id, :string
  end
end
