module Mongolian
  # 基于语法规则的拼写检查，包括元音和谐律及词性检测、划分音节等

  # 测试单词是否符合元音和谐律，并判断词性 参考P87。
  # 返回值 0：错误，不符合元音和谐律，外来词、双词根词或者拼写错误；
  # 返回值 1：正确，且为阳性词；
  # 返回值 10：阳性词，但有错误，第一音节出现第一元音、第五元音，却在后面出现了第四元音；
  # 返回值 2：正确，阴性词；
  # 返回值 20：阴性词，但有错误，第一音节出现第二元音、第七元音，却在后面出现了第六元音；
  def mon_vowel_harmony
    str = self.dup.to_str
    #vowel = ["ᠠ", "ᠡ", "ᠢ", "ᠣ", "ᠤ", "ᠥ", "ᠦ"]
    if str =~ /[ᠠᠣᠤ]/ and str =~ /[ᠡᠥᠦ]/
      return 0
    else
      if str =~ /[ᠠᠣᠤ]/
        if str.mon_syllable[0] =~ /[ᠠᠤ]/ and str[str.mon_syllable[0].size..-1] =~ /ᠣ/
          return 10
        else
          return 1
        end
      else
        if str.mon_syllable[0] =~ /[ᠡᠦ]/ and str[str.mon_syllable[0].size..-1] =~ /ᠥ/
          return 20
        else
          return 2
        end
      end
    end
  end
  
  # 单词划分音节：每个元音前最多一个辅音前面既可划分音节。
  # 返回值是音节数组。
  def mon_syllable
    str = self.dup.to_str
    mlist = []
    s = ""
    str.each_char do |c|
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
  
  # “蒙古语里没有复辅音”是指在书面语单音节中没有复辅音 P89
  def mon_double_constant_check(str)
    mongolian_str = str
    result = 1
    mongolian_str.mon_syllable_classify.each do |s|
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
  def mon_constant_harmony
    return true
  end
  
  # “_” 用于分写 ᠠ(a)/ᠡ(e) 跟前面的辅音(h/g + a; n, l, m, s, sh, j, y, r , W + a/e)
  def mon_ae?
    str = self.dup.to_str
    if str[-1] =~ /᠎[ᠠᠡ]/
      if str[-2] == '᠎'
        if str[-3] =~ /hnlmsshjyrW/
          if str.mon_vowel_harmony == 1 and str[-1] == 'a'
            return true
          elsif str.mon_vowel_harmon == 2 and str[-1] == 'e'
            return true
          else
            return false
          end
        end
      end
      return true
    end
  end
  
end
