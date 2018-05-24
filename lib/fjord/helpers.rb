module Fjord
  module Helpers
    module Mixin
      def self.included(base)
        base.include(::Fjord::Helpers::Functions)
      end
    end

    module Functions
      def identity
        -> (x) { x }
      end
  
      def curry
        -> (fn) { fn.curry }
      end
  
      def compose
        -> (*fns) { pipe.(*fns.reverse) }
      end
  
      def pipe
        -> (*fns) do
          fns.reduce(identity) do |composed, fn|
            -> (x) { fn.(composed.(x)) }
          end
        end
      end

      def reverse
        -> (enum) { enum.reverse }
      end
    end

    extend Functions
  end
end
