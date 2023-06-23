# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:07
# FilePath: P2710. 移除字符串中的尾随零.rb
# Description:

load "common/leetcode.rb"

# @param {String} num
# @return {String}
def remove_trailing_zeros(num)
    ss = num.chars
    while ss.last == "0"
        ss.pop
    end
    ss.join
end

if __FILE__ == $PROGRAM_NAME
    p remove_trailing_zeros(num = "51230100")
end


