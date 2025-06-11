module Mongolian
  # 基于语法的拼写检查包括元音和谐律及词性检测、划分音节等

  # 测试单词是否符合元音和谐律，并判断词性 参考P87
  # 返回值 0：错误，不符合元音和谐律，外来词、双词根词或者拼写错误
  # 返回值 1：正确，且为阳性词
  # 返回值 10：阳性词，但有错误，第一音节出现第五元音，却在后面出现了第四元音
  # 返回值 2：正确，阴性词
  # 返回值 20：阴性词，但有错误，第一音节出现第七元音，却在后面出现了第六元音
  def vowel_harmony
    mongolian_str = self.dup.to_str
    #vowel = ["ᠠ", "ᠡ", "ᠢ", "ᠣ", "ᠤ", "ᠥ", "ᠦ"]
    if mongolian_str =~ /[ᠠᠣᠤ]/ and mongolian_str =~ /[ᠡᠥᠦ]/
      return 0
    else
      if mongolian_str =~ /[ᠠᠣᠤ]/
        #如果第一音节阳性元音为第 5 元音，却在后面出现第 4 元音，则错误
        if mongolian_str.syllable[0] =~ /ᠤ/ and mongolian_str[mongolian_str.syllable[0].size..-1] =~ /ᠣ/
          return 10
        else
          return 1
        end
      else
        #如果第一音节阳性元音为第 7 元音，却在后面出现第 6 元音，则错误
        if mongolian_str.syllable[0] =~ /ᠦ/ and mongolian_str[mongolian_str.syllable[0].size..-1] =~ /ᠥ/
          return 20
        else
          return 2
        end
      end
    end
  end
  
  # 对单词划分音节，返回音节数组
  def syllable
    mongolian_str = self.dup.to_str
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
  
  # 蒙古语里没有复辅音是指在书面语单音节中没有复辅音 P89
  def self.double_constant_check(str)
    mongolian_str = str
    result = 1
    syllable(mongolian_str).each do |s|
      sv = s.scan(/[ᠠᠡᠢᠣᠤᠥᠦ]/).join
      if s.index(sv) < 2 and s.size - s.index(sv) - sv.size < 2
        next
      else
        result = 0
        break
      end
    end
    return result
  end
  
  # 硬辅音 ᠪ(b) ᠭ(g) ᠷ(r) ᠰ(s) ᠳ(d) 后接以 ᠲ(t) ᠴ(q) 为首的附加成分
  # 软辅音 ᠨ(n) ᠮ(m) ᠯ(l) ᠩ(ng) 后接以 ᠳ(d) ᠵ(j)为首的附加成分
  
  # _ 用于分写 ᠠ(a)/ᠡ(e) 跟前面的辅音(h/g + a; n, l, m, s, sh, j, y, r , W + a/e)
  def ae?(str)
    if str =~ /᠎[ᠠᠡ]/
      return true
    else
      false
    end
  end
  
end
