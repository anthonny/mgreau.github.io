module Awestruct
  module Extensions
    module ReadMore
      def truncate(content)
        index = content.index("pass::[more]")
        index ? content[0...index] : content
      end
 
       def filter(content)
        index = content.index("pass::[more]")
        if index != nil
            if index > -1
                content[index..index+11]= ""
            end
        end
        content
      end
    end
  end
end
