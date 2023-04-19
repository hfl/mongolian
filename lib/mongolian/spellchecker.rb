module Mongolian
  # 拼写检查

  # 元音和谐律
  def self.vowel_harmony(mnstr)
    mongolian_str = mnstr
    #vowel = ["ᠠ", "ᠡ", "ᠢ", "ᠣ", "ᠤ", "ᠥ", "ᠦ"]
    # 1，4,5 和 2,6,7 元音不能混用，否则视为错误
    if mongolian_str =~ /[ᠠᠣᠤ]/ and mongolian_str =~ /[ᠡᠥᠦ]/
      # 阴阳元音混用 返回 2
      return 2
    else
      # 正确返回 1
      return 1
    end
  end
  
  def syllable(str)
    return true
  end
end
