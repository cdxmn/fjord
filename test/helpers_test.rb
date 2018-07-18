# frozen_string_literal: true

require_relative 'test_helper'

class HelpersTest < Minitest::Test
  def test_identity
    id = Fjord.identity
    assert_equal "test", id.("test")
  end

  def test_compose
    f1 = -> (x) { x * 2 }
    f2 = -> (x) { x - 5 }
    f  = Fjord.compose.(f1, f2)

    assert_equal 30, f.(20)
  end

  def test_pipe
    f1 = -> (x) { x * 2 }
    f2 = -> (x) { x - 5 }
    f  = Fjord.pipe.(f1, f2)

    assert_equal 35, f.(20)
  end

  def test_curry
    f = Fjord.curry.(-> (a, b, c) { a + b + c} )

    assert_equal f.(1).(2).(3), f.(1, 2, 3)
  end

  def test_reverse
    assert_equal Fjord.reverse.([1, 2, 3]), [3, 2, 1]

    assert_raises(::NoMethodError) { Fjord.reverse.(1) }
  end

  def test_reduce
    sum = -> (a,b) { a + b }
    total_sum = Fjord.reduce.(sum, 0, [1,2,3,4])

    assert_equal total_sum, 10
  end
end
