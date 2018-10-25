# Oh no! Timmy's evalObject function doesn't work. He uses Switch/Cases to evaluate the given properties of an object, can you fix timmy's function?


def eval_object(v) 
    case v['operation']
      when "+" then v['a']+v['b']
      when "-" then v['a']-v['b']
      when "/" then v['a']/v['b']
      when "*" then v['a']*v['b']
      when "%" then v['a']%v['b']
      when "**" then v['a']**v['b']
      else return nil
    end
end



p eval_object({'a'=>1,'b'=>1,'operation'=>'+'}) #, 2