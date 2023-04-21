module Mongolian
  # 拼写检查包括元音和谐律检测、划分音节和词性检测

  # 元音和谐律，P87
  def self.vowel_harmony(str)
    mongolian_str = str
    #vowel = ["ᠠ", "ᠡ", "ᠢ", "ᠣ", "ᠤ", "ᠥ", "ᠦ"]
    # 1，4,5 和 2,6,7 元音不能混用，否则视为错误
    if mongolian_str =~ /[ᠠᠣᠤ]/ and mongolian_str =~ /[ᠡᠥᠦ]/
      # 阴阳元音混用 返回 2
      return 2
    else
      #如果第一音节阳性元音为第 5 元音，却在后面出现第 4 元音，则错误
      if syllable(mongolian_str)[0] =~ /ᠤ/ and mongolian_str[syllable(mongolian_str)[0].size..-1] =~ /ᠣ/
        return 11
      #如果第一音节阳性元音为第 7 元音，却在后面出现第 6 元音，则错误
      elsif syllable(mongolian_str)[0] =~ /ᠦ/ and mongolian_str[syllable(mongolian_str)[0].size..-1] =~ /ᠥ/
        return 12
      else
        # 正确返回 1
        return 1
      end
    end
  end
  
  # 蒙古语里没有复辅音 P89
  
  # 硬辅音 ᠪ(b) ᠭ(g) ᠷ(r) ᠰ(s) ᠳ(d) 后接以 ᠲ(t) ᠴ(q) 为首的附加成分
  # 软辅音 ᠨ(n) ᠮ(m) ᠯ(l) ᠩ(ng) 后接以 ᠳ(d) ᠵ(j)为首的附加成分
  
  # 划分音节
  def self.syllable(str)
    mongolian_str = str
    mlist = []
    s = ""
    mongolian_str.each_char do |c|
      if c =~ /[ᠠᠡᠢᠣᠤᠥᠦ]/
        if s[-1] =~ /[ᠠᠡᠢᠣᠤᠥᠦ]/
          s += c
        else
          if s[0..-2].size > 0
            mlist << s[0..-2]
            s = s[-1]
            s += c
          else
            s += c
          end
        end
      else
        s += c
      end
    end
    mlist << s if s.size > 0
    return mlist
  end
  
  # 判断词性是阴性还是阳性
  def self.sun_or_moon(str)
    mongolian_str = str
    # 同时含有阴性元音和阳性元音，可能是外来词、双词根词或者拼写错误
    if mongolian_str =~ /[ᠠᠣᠤ]/ and mongolian_str =~ /[ᠡᠥᠦ]/
      return -1
    # 只含有阳性元音为阳性词
    elsif mongolian_str =~ /[ᠠᠣᠤ]/
      return 1
    # 其他则为阴性词
    else
      return 0
    end
  end
  
end
