module Mongolian
  ##
  # 判断一个词或者字符是否包含蒙古文字符，
  # 如果包含蒙古文返回 true，否则返回 nil。
  def is_mongolian?
    return true if !!(self =~ /\p{Mongolian}/)
  end
  
  ## 对于混合有多个文种的一段文字，删除其中的非蒙古文字符和蒙古文标点符号后，
  #  仅对蒙古文分词。
  #  返回值为蒙古文分词数组。
  def mon_tokenize
    w = self.dup.to_str
    # 去除标点符号，用空格替换标点符号
    w = w.gsub(/[!᠄?·᠃᠂⁈⁉᠁—;《》]/, " ")
    new_w = ""
    # 将字符串中所有非蒙古文字符删除
    w.each_char do |c|
      c = "" unless c.is_mongolian?
      new_w = new_w + c
    end
    return new_w.split
  end

end
