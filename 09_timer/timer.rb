class Timer

	attr_reader :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		sec = @seconds % 60
		min = @seconds / 60 % 60
		hour = @seconds / 60 / 60
		"#{padded(hour)}:#{padded(min)}:#{padded(sec)}"
	end

	def padded(number)
		number < 10 ? '0'+number.to_s : number.to_s
	end

end