# Create a public class called Cube without a constructor which gets one single private Integer variable Side, a getter GetSide() and a setter SetSide(int num) method for this property. Actually, getter and setter methods are not the common way to write this code in C#. In the next kata of this series, we gonna refactor the code and make it a bit more professional... Note: There's no need to check for negative values!


class Cube  
    attr_accessor :side

    def set_side s 
        self.side = s 
    end

    def get_side 
        self.side ||= 0
    end
end




c = Cube.new
p c.get_side() #, 0, "When not set, side should be 0"

c.set_side(5)
p c.get_side() #, 5, "Should return 5"