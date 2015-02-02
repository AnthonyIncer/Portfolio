class Quadrilateral

end

class Rectangle < Quadrilateral
end

class Square < Rectangle
	def area
		puts 4 * 4
	end
end 

class Trapezoid < Quadrilateral
end 

class Rhombus < Trapezoid
end 

def test
	rec = Rectangle.new
	puts rec.is_a? Quadrilateral

	squ = Square.new
	puts squ.is_a? Rectangle
	squ.area == 16

	trap = Trapezoid.new
	puts trap.is_a? Quadrilateral
	puts not(trap.is_a? Rectangle)
	puts "Trapezoid is a Rectangle: #{(trap.is_a? Rectangle)}"

	rhom = Rhombus.new
	puts "Rhombus is a Quadrilateral: #{rhom.is_a? Quadrilateral}"
end 

test
