# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:48
# FilePath: P1694. 重新格式化电话号码.rb
# Description:

load "common/leetcode.rb"

# @param {String} number
# @return {String}
def reformat_number(number)
    number.delete!(" ")
    number.delete!("-")
    index, n, nums = 0, number.size, []
    while index + 4 < n
        nums << number[index, 3]
        index += 3
    end
    if n - index == 4
        nums << number[index, 2]
        index += 2
    end
    nums << number[index, n]
    nums.join("-")
end

if __FILE__ == $PROGRAM_NAME
    p reformat_number("123 4-567")
    p reformat_number("123 4-5678")
    p reformat_number("12")
    p reformat_number("--17-5 229 35-39475 ")
end
