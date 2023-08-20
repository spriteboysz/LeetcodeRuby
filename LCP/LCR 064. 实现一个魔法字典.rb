# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 12:13
# FilePath: LCR 064. 实现一个魔法字典.rb
# Description:

load "common/leetcode.rb"

class MagicDictionary

=begin
    Initialize your data structure here.
=end
    def initialize
        @hash = Hash.new { |h, k| h[k] = Array.new.fill("") }
    end

=begin
    :type dictionary: String[]
    :rtype: Void
=end
    def build_dict(dictionary)
        dictionary.each { |dic|
            @hash[dic.size] << dic
        }
    end

=begin
    :type search_word: String
    :rtype: Boolean
=end
    def search(search_word)
        @hash[search_word.size].each { |word|
            diff = 0
            (0...word.size).each { |i|
                if word[i] != search_word[i]
                    diff += 1
                end
            }
            return true if diff == 1
        }
        false
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = MagicDictionary.new
    obj.build_dict(["hello", "leetcode"])
    p obj.search("hello")
    p obj.search("hhllo")
    p obj.search("hell")
    p obj.search("leetcoded")
end


