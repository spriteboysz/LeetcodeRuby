# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:39
# FilePath: LCR 169. 招式拆解 II.rb
# Description:

load "common/leetcode.rb"

# @param {String} arr
# @return {Character}
def dismantling_action(arr)
    hash = Hash.new(0)
    arr.each_char {|c| hash[c] += 1}
    arr.each_char {|c|
        return c if hash[c] == 1
    }
    ' '
end

if __FILE__ == $PROGRAM_NAME
    p dismantling_action(arr = "abbccdeff")
end


