# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 16:07
# FilePath: P1796. 字符串中第二大的数字.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def second_highest(s)
    nums = []
    s.each_char do |c|
        if c.ord >= "0".ord && c.ord <= "9".ord
            nums << (c.ord - "0".ord)
        end
    end
    nums.uniq!
    nums.length < 2 ? -1 : nums.max(2)[1]
end

if __FILE__ == $PROGRAM_NAME
    p second_highest(s = "dfa112233afd")
end
