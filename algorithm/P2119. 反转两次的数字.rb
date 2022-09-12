# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:41
# FilePath: P2119. 反转两次的数字.rb
# Description: 

# @param {Integer} num
# @return {Boolean}
def is_same_after_reversals(num)
    num == 0 or num % 10 != 0
end

p is_same_after_reversals(num = 1800)
p is_same_after_reversals(num = 0)



