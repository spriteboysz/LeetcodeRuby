# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:45
# FilePath: P1460. 通过翻转子数组使两个数组相等.rb
# Description: 

# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
    target.sort == arr.sort
end

p can_be_equal(target = [1, 2, 3, 4], arr = [2, 4, 1, 3])



