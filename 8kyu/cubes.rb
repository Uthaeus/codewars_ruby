# You already implemented a Cube class, but now we need your help again! I'm talking about constructors. We don't have one. Let's code two: One taking an integer and one handling no given arguments!


class Cube
    def initialize side 
        @_side = side 
    end
    
    def get_side()
      return @_side
    end
    
    def set_side(new_side)
      @_side = new_side.abs
    end
end



c = Cube.new(10)
p c.get_side() #, 10, "Should be 10"