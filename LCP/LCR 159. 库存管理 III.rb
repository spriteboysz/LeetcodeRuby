# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:38
# FilePath: LCR 159. 库存管理 III.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} stock
# @param {Integer} cnt
# @return {Integer[]}
def inventory_management(stock, cnt)
    stock.sort.min(cnt)
end

if __FILE__ == $PROGRAM_NAME
    p inventory_management(stock = [0,2,3,6], cnt = 2)
end


