class Module
    def attribute(a,&block)
        val = nil
        if a.is_a? Hash
          val = a.first.last
          a = a.first.first
        end
        eval "define_method :#{a} do if (defined? @#{a}) then @#{a}; else !block.nil? ? instance_eval(&block) : val; end end"
        eval "define_method :#{a}= do |param| @#{a}=param; end"
        eval "define_method :#{a}? do self.send(#{a}) ? true : false end"
    end
end
