module Mongolian
  # 传统蒙古文很多时候需要对其进行拉丁转写，本程序对相关传统蒙古文词句进行转写转换
  # 转换原则：
  # 1. 仅针对传统蒙古文进行转换；
  # 2. 传统蒙古文与拉丁转写字母一一对应；
  # 3. 根据 Unicode 定义，转写不分阴阳形式；
  
  # 转换传统蒙古文为拉丁转写
  def mon_m2l
    str = self.dup.to_str
    str = str.gsub(/ᠠ/, "a")
    str = str.gsub(/ᠡ/, "e")
    str = str.gsub(/ᠢ/, "i")
    str = str.gsub(/ᠣ/, "o")
    str = str.gsub(/ᠤ/, "u")
    str = str.gsub(/ᠥ/, "ö")
    str = str.gsub(/ᠦ/, "ü")
    str = str.gsub(/ᠧ/, "ë")
    str = str.gsub(/ᠨ/, "n")
    str = str.gsub(/ᠩ/, "ng")
    str = str.gsub(/ᠪ/, "b")
    str = str.gsub(/ᠫ/, "p")
    str = str.gsub(/ᠬ/, "x")
    str = str.gsub(/ᠭ/, "g")
    str = str.gsub(/ᠮ/, "m")
    str = str.gsub(/ᠯ/, "l")
    str = str.gsub(/ᠰ/, "s")
    str = str.gsub(/ᠱ/, "š")
    str = str.gsub(/ᠲ/, "t")
    str = str.gsub(/ᠳ/, "d")
    str = str.gsub(/ᠴ/, "č")
    str = str.gsub(/ᠵ/, "ǰ")
    str = str.gsub(/ᠶ/, "y")
    str = str.gsub(/ᠷ/, "r")
    str = str.gsub(/ᠸ/, "w")
    str = str.gsub(/ᠹ/, "f")
    str = str.gsub(/ᠺ/, "k")
    str = str.gsub(/ᠻ/, "ḳ")
    str = str.gsub(/ᠼ/, "c")
    str = str.gsub(/ᠽ/, "z")
    str = str.gsub(/ᠾ/, "h")
    str = str.gsub(/ᠿ/, "ž")
    str = str.gsub(/ᡀ/, "lh")
    str = str.gsub(/ᡁ/, "ẑ")
    str = str.gsub(/ᡂ/, "ĉ")
    str = str.gsub(/᠀/, "&")
    str = str.gsub(/᠁/, "…")
    str = str.gsub(/᠂/, ",")
    str = str.gsub(/᠃/, ".")
    str = str.gsub(/᠇/, ":")
    str = str.gsub(/᠈/, "#")
    str = str.gsub(/᠊/, "‐")
    str = str.gsub(/᠋/, "") #fvs1
    str = str.gsub(/᠌/, "") #fvs2
    str = str.gsub(/᠍/, "") #fvs3
    str = str.gsub(/᠎/, "_")
    str = str.gsub(/᠐/, "'0")
    str = str.gsub(/᠑/, "'1")
    str = str.gsub(/᠒/, "'2")
    str = str.gsub(/᠓/, "'3")
    str = str.gsub(/᠔/, "'4")
    str = str.gsub(/᠕/, "'5")
    str = str.gsub(/᠖/, "'6")
    str = str.gsub(/᠗/, "'7")
    str = str.gsub(/᠘/, "'8")
    str = str.gsub(/᠙/, "'9")
    str = str.gsub(/ᡛ/, "ń")
    str = str.gsub(/ᢀ/, "ṃ")
    str = str.gsub(/ᢁ/, "ḥ")
    str = str.gsub(/ᢂ/, "â")
    str = str.gsub(/ᢃ/, "ŏ")
    str = str.gsub(/ᢄ/, "ô")
    str = str.gsub(/ᢅ/, "ˑ")
    str = str.gsub(/ᢆ/, "ːˑ")
    str = str.gsub(/ᢇ/, "ā")
    str = str.gsub(/ᢈ/, "ī")
    str = str.gsub(/ᢉ/, "ḵ")
    str = str.gsub(/ᢊ/, "ṉ")
    str = str.gsub(/ᢋ/, "ƈ")
    str = str.gsub(/ᢌ/, "ť")
    str = str.gsub(/ᢍ/, "ţ")
    str = str.gsub(/ᢎ/, "ḏ")
    str = str.gsub(/ᢏ/, "ņ")
    str = str.gsub(/ᢐ/, "ṯ")
    str = str.gsub(/ᢑ/, "ḓ")
    str = str.gsub(/ᢒ/, "p̄")
    str = str.gsub(/ᢓ/, "ṕh")
    str = str.gsub(/ᢔ/, "ş")
    str = str.gsub(/ᢕ/, "ẖ")
    str = str.gsub(/ᢖ/, "ẕ")
    str = str.gsub(/ᢗ/, "ʒ̄")
    str = str.gsub(/ᢦ/, "ŭ")
    str = str.gsub(/ᢧ/, "ÿ")
    str = str.gsub(/ᢩ/, "̲")
    str = str.gsub(/‌/, "^")
    str = str.gsub(/‍/, "*")
    str = str.gsub(/ /, "-")
    return str
  end
  
  # 对拉丁转写蒙古文恢复为蒙古文
  def mon_l2m
    str = self.dup.to_str
    # 将拉丁文转换文对应的蒙古文
    return str
  end
end
