class AdminsController < ApplicationController
  def index
    # link_to 'teachers/dash_board'
  end

  def assign_ranks
  	totals = []
  	Student.all.each do |student|
  		totals << {
  			student_id: student.id,
  			total: student.marks.sum(&:number)	
  		}
  	end

  	totals = totals.sort_by { |marks| marks[:total].to_f }.reverse

  	rank = 1
  	previous_marks = totals[0].try(:[], :total)

	totals.each do |item|
		item[:rank] = rank

		unless previous_marks == item[:total]
			rank = rank + 1
		end
	end

	totals.each do |item|
		student = Student.find(item[:student_id])
		student.update_attributes!(rank: item[:rank])
	end
  end
end
