# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:05
# FilePath: LCR 128. 库存管理 I.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} numbers
# @return {Integer}

# @param {Integer[]} stock
# @return {Integer}
def stock_management(stock)
    stock.min
end

if __FILE__ == $PROGRAM_NAME
    p stock_management(stock = [4,5,8,3,4])
end


