# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:33
# FilePath: P2496. 数组中字符串的最大值.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {Integer}
def maximum_value(strs)
    strs.each_with_index do |s, i|
        flag = true
        s.chars.each do |c|
            if c < '0' || c > '9'
                strs[i] = s.length
                flag = false
                break
            end
        end
        strs[i] = s.to_i if flag
    end
    strs.max
end

if __FILE__ == $PROGRAM_NAME
    p maximum_value(strs = %w[alic3 bob 3 4 00000])
end


