class AddNameToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :address, :text
    add_column :admins, :mobile_number, :string
    add_column :admins, :subject_id, :string
    add_column :admins, :student_id, :string
    add_column :admins, :teacher_id, :string
  end
end
