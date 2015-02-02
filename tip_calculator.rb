#puts "How much is the bill?"
#bill = gets.to_f
#puts "The bill is $#{bill}"
#bill *= 100
#bill = bill.to_i
#tip = bill * 0.2
#puts "The tip is $#{tip / 100}"
#total = (tip + bill) / 100
#puts "$#{total}"



class TipCalculator
	attr_accessor :bill, :tip_percent, :num_people

	def calculate_total_bill
		@total = @bill * (1 + (@tip_percent/100.00))
	end

	def my_share
		@total / @num_people
	end
end 



tip_calc = TipCalculator.new

#collecting user input
tip_calc.bill = gets.to_f
tip_calc.tip_percent = 20
tip_calc.num_people = 3

tip_calc.calculate_total_bill

