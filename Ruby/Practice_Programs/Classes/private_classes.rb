class Shape

    class Rectangle
        def area_of_rectangle(l,w)
            return l*w
        end
    end

    class Triangle
        def area_of_triangle(base,height)
            return 0.5*base*height
        end
    end

    def area
        puts Rectangle.new.area_of_rectangle(20,30)
        puts Triangle.new.area_of_triangle(10,30)
    end

    private_constant:Rectangle
    private_constant:Triangle
end

obj=Shape.new
obj.area