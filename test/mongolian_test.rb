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
  
  def test_tokenizer
    assert_equal ["ᠮᠥᠩᠭᠤᠯ", "ᠪᠢᠴᠢᠭ"], Mongolian.tokenizer("ᠮᠥᠩᠭᠤᠯ ᠪᠢᠴᠢᠭ")
  end
  
  def test_tokenizer_with_symbol
    assert_equal ["ᠮᠥᠩᠭᠤᠯ", "ᠪᠢᠴᠢᠭ"], Mongolian.tokenizer("ᠮᠥᠩᠭᠤᠯ ᠪᠢᠴᠢᠭ!")
  end
  
  def test_vowel_harmony_is_true
    assert_equal 1, Mongolian.vowel_harmony("ᠮᠣᠩᠭᠤᠯ")
  end
  
  def test_vowel_harmony_is_wrong
    assert_equal 2, Mongolian.vowel_harmony("ᠮᠥᠭᠤᠯ")
  end
  
  def test_syllabel
    assert_equal ["ᠮᠣᠩ", "ᠭᠤᠯ"], Mongolian.syllable("ᠮᠣᠩᠭᠤᠯ")
  end
  
  def test_vowel_harmony_with_wrong
    assert_equal 11, Mongolian.vowel_harmony("ᠮᠤᠩᠭᠣᠯ")
  end
  
  def test_sun_or_moon_with_wrong_word
    assert_equal -1, Mongolian.sun_or_moon("ᠮᠥᠩᠭᠤᠯ")
  end
  
  def test_sun_or_moon
    assert_equal 1, Mongolian.sun_or_moon("ᠮᠣᠩᠭᠤᠯ")
  end
  
  def test_sun_or_moon_is_moon
    assert_equal 0, Mongolian.sun_or_moon("ᠪᠢᠴᠢᠭ")
  end
end
