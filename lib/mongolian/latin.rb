module Mongolian
  # 传统蒙古文很多时候需要对其进行拉丁转写，本程序对相关传统蒙古文词句进行转写转换
  # 转换原则：
  # 1. 仅针对传统蒙古文进行转换；
  # 2. 传统蒙古文与拉丁转写字母一一对应；
  # 3. 根据 Unicode 定义，转写不分阴阳形式；
  
  # 转换传统蒙古文为拉丁转写
  def m2l
    mongolian_str = self.dup.to_str
    mongolian_str = mongolian_str.gsub(/ᠠ/, "a")
    mongolian_str = mongolian_str.gsub(/ᠡ/, "e")
    mongolian_str = mongolian_str.gsub(/ᠢ/, "i")
    mongolian_str = mongolian_str.gsub(/ᠣ/, "o")
    mongolian_str = mongolian_str.gsub(/ᠤ/, "u")
    mongolian_str = mongolian_str.gsub(/ᠥ/, "ö")
    mongolian_str = mongolian_str.gsub(/ᠦ/, "ü")
    mongolian_str = mongolian_str.gsub(/ᠧ/, "ë")
    mongolian_str = mongolian_str.gsub(/ᠨ/, "n")
    mongolian_str = mongolian_str.gsub(/ᠩ/, "ŋ")
    mongolian_str = mongolian_str.gsub(/ᠪ/, "b")
    mongolian_str = mongolian_str.gsub(/ᠫ/, "p")
    mongolian_str = mongolian_str.gsub(/ᠬ/, "x")
    mongolian_str = mongolian_str.gsub(/ᠭ/, "g")
    mongolian_str = mongolian_str.gsub(/ᠮ/, "m")
    mongolian_str = mongolian_str.gsub(/ᠯ/, "l")
    mongolian_str = mongolian_str.gsub(/ᠰ/, "s")
    mongolian_str = mongolian_str.gsub(/ᠱ/, "š")
    mongolian_str = mongolian_str.gsub(/ᠲ/, "t")
    mongolian_str = mongolian_str.gsub(/ᠳ/, "d")
    mongolian_str = mongolian_str.gsub(/ᠴ/, "č")
    mongolian_str = mongolian_str.gsub(/ᠵ/, "ǰ")
    mongolian_str = mongolian_str.gsub(/ᠶ/, "y")
    mongolian_str = mongolian_str.gsub(/ᠷ/, "r")
    mongolian_str = mongolian_str.gsub(/ᠸ/, "w")
    mongolian_str = mongolian_str.gsub(/ᠹ/, "f")
    mongolian_str = mongolian_str.gsub(/ᠺ/, "k")
    mongolian_str = mongolian_str.gsub(/ᠻ/, "ḳ")
    mongolian_str = mongolian_str.gsub(/ᠼ/, "c")
    mongolian_str = mongolian_str.gsub(/ᠽ/, "z")
    mongolian_str = mongolian_str.gsub(/ᠾ/, "h")
    mongolian_str = mongolian_str.gsub(/ᠿ/, "ž")
    mongolian_str = mongolian_str.gsub(/ᡀ/, "lh")
    mongolian_str = mongolian_str.gsub(/ᡁ/, "ẑ")
    mongolian_str = mongolian_str.gsub(/ᡂ/, "ĉ")
    mongolian_str = mongolian_str.gsub(/᠀/, "&")
    mongolian_str = mongolian_str.gsub(/᠁/, "…")
    mongolian_str = mongolian_str.gsub(/᠂/, ",")
    mongolian_str = mongolian_str.gsub(/᠃/, ".")
    mongolian_str = mongolian_str.gsub(/᠇/, ":")
    mongolian_str = mongolian_str.gsub(/᠈/, "#")
    mongolian_str = mongolian_str.gsub(/᠊/, "‐")
    mongolian_str = mongolian_str.gsub(/᠋/, "") #fvs1
    mongolian_str = mongolian_str.gsub(/᠌/, "") #fvs2
    mongolian_str = mongolian_str.gsub(/᠍/, "") #fvs3
    mongolian_str = mongolian_str.gsub(/᠎/, "_")
    mongolian_str = mongolian_str.gsub(/᠐/, "'0")
    mongolian_str = mongolian_str.gsub(/᠑/, "'1")
    mongolian_str = mongolian_str.gsub(/᠒/, "'2")
    mongolian_str = mongolian_str.gsub(/᠓/, "'3")
    mongolian_str = mongolian_str.gsub(/᠔/, "'4")
    mongolian_str = mongolian_str.gsub(/᠕/, "'5")
    mongolian_str = mongolian_str.gsub(/᠖/, "'6")
    mongolian_str = mongolian_str.gsub(/᠗/, "'7")
    mongolian_str = mongolian_str.gsub(/᠘/, "'8")
    mongolian_str = mongolian_str.gsub(/᠙/, "'9")
    mongolian_str = mongolian_str.gsub(/ᡛ/, "ń")
    mongolian_str = mongolian_str.gsub(/ᢀ/, "ṃ")
    mongolian_str = mongolian_str.gsub(/ᢁ/, "ḥ")
    mongolian_str = mongolian_str.gsub(/ᢂ/, "â")
    mongolian_str = mongolian_str.gsub(/ᢃ/, "ŏ")
    mongolian_str = mongolian_str.gsub(/ᢄ/, "ô")
    mongolian_str = mongolian_str.gsub(/ᢅ/, "ˑ")
    mongolian_str = mongolian_str.gsub(/ᢆ/, "ːˑ")
    mongolian_str = mongolian_str.gsub(/ᢇ/, "ā")
    mongolian_str = mongolian_str.gsub(/ᢈ/, "ī")
    mongolian_str = mongolian_str.gsub(/ᢉ/, "ḵ")
    mongolian_str = mongolian_str.gsub(/ᢊ/, "ṉ")
    mongolian_str = mongolian_str.gsub(/ᢋ/, "ƈ")
    mongolian_str = mongolian_str.gsub(/ᢌ/, "ť")
    mongolian_str = mongolian_str.gsub(/ᢍ/, "ţ")
    mongolian_str = mongolian_str.gsub(/ᢎ/, "ḏ")
    mongolian_str = mongolian_str.gsub(/ᢏ/, "ņ")
    mongolian_str = mongolian_str.gsub(/ᢐ/, "ṯ")
    mongolian_str = mongolian_str.gsub(/ᢑ/, "ḓ")
    mongolian_str = mongolian_str.gsub(/ᢒ/, "p̄")
    mongolian_str = mongolian_str.gsub(/ᢓ/, "ṕh")
    mongolian_str = mongolian_str.gsub(/ᢔ/, "ş")
    mongolian_str = mongolian_str.gsub(/ᢕ/, "ẖ")
    mongolian_str = mongolian_str.gsub(/ᢖ/, "ẕ")
    mongolian_str = mongolian_str.gsub(/ᢗ/, "ʒ̄")
    mongolian_str = mongolian_str.gsub(/ᢦ/, "ŭ")
    mongolian_str = mongolian_str.gsub(/ᢧ/, "ÿ")
    mongolian_str = mongolian_str.gsub(/ᢩ/, "̲")
    mongolian_str = mongolian_str.gsub(/‌/, "^")
    mongolian_str = mongolian_str.gsub(/‍/, "*")
    mongolian_str = mongolian_str.gsub(/ /, "-")
    return mongolian_str
  end
  
  # 对拉丁转写蒙古文恢复为蒙古文
  def l2m
    latin_str = self.dup.to_str
    mongolian_str = latin_str
    return mongolian_str
  end
end
