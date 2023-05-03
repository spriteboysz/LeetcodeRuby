# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 16:27
# FilePath: P1475. 商品折扣后的最终价格.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
    final = []
    prices.each_with_index do |price1, i|
        discount = price1
        prices.each_with_index do |price2, j|
            next if j <= i
            if price2 <= price1
                discount = price1 - price2
                break
            end
        end
        final << discount
    end
    final
end

if __FILE__ == $PROGRAM_NAME
    p final_prices(prices = [8, 4, 6, 2, 3])
end


