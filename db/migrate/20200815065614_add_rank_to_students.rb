class AddRankToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :rank, :integer
  end
end
