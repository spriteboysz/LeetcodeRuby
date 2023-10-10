# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:36
# FilePath: LCR 158. 库存管理 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} stock
# @return {Integer}
def inventory_management(stock)
    hash = Hash.new(0)
    stock.each { |num| hash[num] += 1 }
    hash.each_pair {|k, v| return k if v > stock.length / 2}
end

if __FILE__ == $PROGRAM_NAME
    p inventory_management(stock = [6, 1, 3, 1, 1, 1])
end


