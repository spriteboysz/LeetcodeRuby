# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:58
# FilePath: LCR 179. 查找总价格为目标值的两个商品.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} price
# @param {Integer} target
# @return {Integer[]}
def two_sum(price, target)
    left, right = 0, price.size - 1
    while left < right
        if price[left] + price[right] < target
            left += 1
        elsif price[left] + price[right] > target
            right -= 1
        else
            return [price[left], price[right]]
        end
    end
    [-1, -1]
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(price = [3, 9, 12, 15], target = 18)
end


