# frozen_string_literal: true

require "test_helper"

class TestMongolian < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Mongolian::VERSION
  end

  def test_only_mongolian_tokenize
    assert 2, "ᠨᠣᠮ ᠤᠨ ᠰᠠᠨᠩ".mongolian_tokenize.size
  end

  def test_is_mongolian
    assert true, "ᠠ".is_mongolian?
  end
  
  def test_is_mongolian_return_empty
    assert_nil "a".is_mongolian?
  end
  
  def test_multitext_mongolian_tokenize
    assert 2, "ᠨᠣᠮ ᠤᠨ b ᠰᠠᠨᠩ a".mongolian_tokenize.size
  end
  
  def test_mongolian_stemmify
    assert "ᠨᠣᠮ", "ᠨᠣᠮ ᠤᠨ".mongolian_stemmify
  end
  
  def test_m2l
    assert_equal "bičig", "ᠪᠢᠴᠢᠭ".m2l
  end
  
  def test_vowel_harmony_with_m
    assert_equal 1, "ᠮᠣᠩᠭᠤᠯ".vowel_harmony
  end
  
  def test_vowel_harmony_with_f
    assert_equal 2, "ᠪᠢᠴᠢᠭ".vowel_harmony
  end
  
  def test_vowel_harmony_with_error
    assert_equal 0, "ᠮᠥᠩᠭᠤᠯ".vowel_harmony
  end
  
  def test_vowel_harmony_with_error_in_m
    assert_equal 10, "ᠮᠤᠩᠭᠣᠯ".vowel_harmony
  end
  
  def test_vowel_harmony_with_error_in_f
    assert_equal 20, "ᠨᠦᠮᠥ".vowel_harmony
  end
  
  def test_syllable
    assert_equal 2, "ᠪᠢᠴᠢᠭ".syllable.size
  end
  
end
