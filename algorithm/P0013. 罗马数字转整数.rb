# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:20
# FilePath: P0013. 罗马数字转整数.rb
# Description:

load "common/leetcode.rb"

Roman = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
}

# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman = pre = 0
    s.each_char do |char|
        val = Roman[char]
        roman += val
        roman -= (pre * 2) if val > pre
        pre = val
    end
    roman
end

if __FILE__ == $PROGRAM_NAME
    p roman_to_int(s = "MCMXCIV")
end


