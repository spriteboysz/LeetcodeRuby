# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 18:23
# FilePath: P2600. K 件物品的最大和.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} num_ones
# @param {Integer} num_zeros
# @param {Integer} num_neg_ones
# @param {Integer} k
# @return {Integer}
def k_items_with_maximum_sum(num_ones, num_zeros, num_neg_ones, k)
    return k if k <= num_ones
    k -= num_ones
    return num_ones if k <= num_zeros
    k -= num_zeros
    num_ones - k if num_neg_ones >= k
end

if __FILE__ == $PROGRAM_NAME
    p k_items_with_maximum_sum(3, 2, 0, 4)
end


