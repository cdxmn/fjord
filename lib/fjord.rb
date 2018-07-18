# frozen_string_literal: true

require 'fjord/functions'
require 'fjord/functions/pipe'
require 'fjord/functions/compose'
require 'fjord/functions/curry'
require 'fjord/functions/identity'
require 'fjord/functions/reduce'
require 'fjord/functions/reverse'

require 'fjord/helpers'
require 'fjord/helpers/mixin'

module Fjord
  VERSION = '1.0.0'.freeze
  extend ::Fjord::Functions
end
