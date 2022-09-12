# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:15
# FilePath: P2169. 得到 0 的操作数.rb
# Description: 

# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
    cnt = 0
    while 0 != num1 * num2
        if num1 >= num2
            num1 -= num2
        else
            num2 -= num1
        end
        cnt += 1
    end
    cnt
end

p count_operations(num1 = 2, num2 = 3)



