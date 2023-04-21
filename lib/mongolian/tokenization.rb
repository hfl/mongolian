module Mongolian
  # 分词，去除符号，然后以空格分词
  def self.tokenizer(str)
    mongolian_str = str
    # 去除标点符号，用空格替换标点符号
    mongolian_str = mongolian_str.gsub(/[!᠄?·᠃᠂⁈⁉᠁—;《》]/, " ")
    mlist = mongolian_str.split
    return mlist
  end
end
