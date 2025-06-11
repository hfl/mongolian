# frozen_string_literal: true

require_relative "mongolian/version"

module Mongolian
  class Error < StandardError; end
  ##
  # 判断一个词或者字符是否包含蒙古文字符，
  # 如果包含蒙古文返回 true，否则返回 nil。
  def is_mongolian?
    return true if !!(self =~ /\p{Mongolian}/)
  end
  
  ## 对于混合有多个文种的一段文字，删除其中的非蒙古文字符后，仅对蒙古文分词。
  #  函数返回仅包含蒙古文的分词数组。
  def mongolian_tokenize
    w = self.dup.to_str
    new_w = ""
    # 将字符串中所有非蒙古文字符删除
    w.each_char do |c|
      c = "" unless c.is_mongolian?
      new_w = new_w + c
    end
    return new_w.split
  end
  ## 对做好分词的蒙古文词进行词干提取。
  def mongolian_stemmify
    w = self.dup.to_str
    return w if w.length < 4
    
    # 在蒙古文空格后，必定是后缀，删除
    if w =~ /᠎/
      w = $`
    end
    
    return w
  end
end

## 扩展 String，包含模块 Mongolian
class String
  include Mongolian
end
