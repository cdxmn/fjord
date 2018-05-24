require_relative 'test_helper'

class HelpersTest < Minitest::Test
  def test_identity
    id = Fjord::Helpers::identity
    assert_equal "test", id.("test")
  end

  def test_compose
    f1 = -> (x) { x * 2 }
    f2 = -> (x) { x - 5 }
    f  = Fjord::Helpers::compose.(f1, f2)

    assert_equal 30, f.(20)
  end

  def test_pipe
    f1 = -> (x) { x * 2 }
    f2 = -> (x) { x - 5 }
    f  = Fjord::Helpers::pipe.(f1, f2)
    
    assert_equal 35, f.(20)
  end

  def test_curry
    f = Fjord::Helpers::curry.(-> (a, b, c) { a + b + c} )

    assert_equal f.(1).(2).(3), f.(1, 2, 3)
  end

  def test_reverse
    assert_equal Fjord::Helpers::reverse.([1, 2, 3]), [3, 2, 1]
    
    assert_raises(::NoMethodError) { Fjord::Helpers::reverse.(1) }
  end
end
