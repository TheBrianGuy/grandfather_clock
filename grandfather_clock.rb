def grandfather_clock(a_proc)
	hours = Time.new.hour
	if hours > 12
		hours = hours - 12
	elsif hours == 0
		hours = 12
	else
		hours = hours
	end

	hours.times do
		a_proc.call
	end
end

clock = Proc.new do
	puts 'DONG!'
end

puts grandfather_clock(clock)
