# frozen_string_literal: true

module Fjord
  module Functions
    def pipe
      -> (*fns) do
        fns.reduce(identity) do |composed, fn|
          -> (x) { fn.(composed.(x)) }
        end
      end
    end
  end
end
