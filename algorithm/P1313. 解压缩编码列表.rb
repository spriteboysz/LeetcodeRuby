# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:01
# FilePath: P1313. 解压缩编码列表.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    decompress = []
    (0...nums.length).step(2).each { |i|
        decompress += [nums[i + 1]] * nums[i]
    }
    decompress
end

p decompress_rl_elist(nums = [1, 1, 2, 3])



