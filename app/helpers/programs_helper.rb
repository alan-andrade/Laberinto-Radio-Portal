module ProgramsHelper
	def order_schedules
		# [lunes,marts...domingo]
		# [schedule,shedule]
		to_return	=	[]
		returned	=	false
		@days.each_with_index do |day,index|
			@program.schedules.each do |sch|
				if sch.day_id == index+1
					returned = true
					to_return << {checked: true, day: day.day}
					break					
				end
			end
			to_return << {checked: false, day: day.day} if returned == false
			returned = false
		end
		to_return
	end
end
