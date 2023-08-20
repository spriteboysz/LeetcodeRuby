# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 13:10
# FilePath: LCP 77. 符文储备.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} runes
# @return {Integer}
def rune_reserve(runes)
    runes.sort!
    maximum, cur = 1, 1
    runes.each_with_index { |num, i|
        next if i == 0
        if num - runes[i - 1] > 1
            cur = 1
        else
            cur += 1
            maximum = [maximum, cur].max
        end
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p rune_reserve(runes = [1, 1, 3, 3, 2, 4])
end


