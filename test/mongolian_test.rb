require 'test_helper'

class MongolianTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Mongolian::VERSION
  end

  def test_say_hello
    assert_equal "sainuu, Mongolian!", Mongolian.sainuu("Mongolian")
  end
  
  def test_tm2l
    assert_equal "bičig", Mongolian.tm2l("ᠪᠢᠴᠢᠭ")
  end
end
