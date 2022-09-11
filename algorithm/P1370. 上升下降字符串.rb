# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:28
# FilePath: P1370. 上升下降字符串.rb
# Description: 

# @param {String} s
# @return {String}
def sort_string(s)
    alphabet = Array.new(26, 0)
    s.chars.each { |c| alphabet[c.ord - 97] += 1 }
    ss = ""
    while ss.length < s.length
        (0..25).each { |i|
            if alphabet[i] > 0
                ss += (i + 97).chr
                alphabet[i] -= 1
            end
        }
        (25..0).step(-1).each { |i|
            if alphabet[i] > 0
                ss += (i + 97).chr
                alphabet[i] -= 1
            end
        }
    end
    ss
end

p sort_string(s = "leetcode")




