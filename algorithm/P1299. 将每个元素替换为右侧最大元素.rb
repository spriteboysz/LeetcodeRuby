# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:22
# FilePath: P1299. 将每个元素替换为右侧最大元素.rb
# Description: 

# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
    nums = Array.new(arr.length, -1)
    (arr.length - 2..0).step(-1).each { |i|
        nums[i] = [nums[i + 1], arr[i + 1]].max
    }
    nums
end

p replace_elements(arr = [17, 18, 5, 4, 6, 1])



