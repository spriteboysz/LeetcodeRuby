# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:54
# FilePath: P1342. 将数字变成 0 的操作次数.rb
# Description: 

# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    cnt = 0
    while num > 0
        if num % 2 == 0
            num /= 2
        else
            num -= 1
        end
        cnt += 1
    end
    cnt
end

p number_of_steps(123)



