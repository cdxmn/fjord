# frozen_string_literal: true

module Fjord
  module Helpers
    module Mixin
      def self.included(base)
        base.include(::Fjord::Functions)
      end
    end
  end
end
