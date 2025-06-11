module Mongolian
  ## 对做好分词的蒙古文词进行词干提取。
  def mon_stemmify
    w = self.dup.to_str
    return w if w.length < 4
    
    # 在蒙古文空格后，必定是后缀，删除
    if w =~ /᠎/
      w = $`
    end
    
    return w
  end
end
