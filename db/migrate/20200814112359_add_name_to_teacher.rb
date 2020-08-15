class AddNameToTeacher < ActiveRecord::Migration[5.2]
  def change
  	add_column :teachers, :address, :text
    add_column :teachers, :mobile_number, :string
    add_column :teachers, :subject_id, :string
    add_column :teachers, :student_id, :string
  end
end
