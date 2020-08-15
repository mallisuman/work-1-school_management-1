class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :mobile_number
      t.string :subject_id
      t.string :teacher_id
    end
  end
end
