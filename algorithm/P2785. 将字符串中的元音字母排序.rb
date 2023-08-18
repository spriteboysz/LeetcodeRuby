# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 22:19
# FilePath: P2785. 将字符串中的元音字母排序.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def sort_vowels(s)
    hash = Hash.new
    "AEIOUaeiou".each_char { |c|
        hash[c] = 1
    }
    vowels = []
    s.each_char { |c|
        vowels << c if hash.include?(c)
    }
    vowels.sort!
    pos = 0
    s.chars.each_with_index { |c, i|
        if hash.include?(c)
            s[i] = vowels[pos]
            pos += 1
        end
    }
    s
end

if __FILE__ == $PROGRAM_NAME
    p sort_vowels(s = "lEetcOde")
end


