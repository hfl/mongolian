# frozen_string_literal: true

require_relative "mongolian/version"
require_relative "mongolian/latin"
require_relative "mongolian/tokenizer"
require_relative "mongolian/spellchecker"
require_relative "mongolian/stemmify"

module Mongolian
  class Error < StandardError; end
end

## 扩展 String
class String
  include Mongolian
end
