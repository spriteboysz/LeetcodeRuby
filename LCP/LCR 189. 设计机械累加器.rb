# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 20:44
# FilePath: LCR 189. 设计机械累加器.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} target
# @return {Integer}
def mechanical_accumulator(target)
    return 1 if target == 1
    mechanical_accumulator(target - 1) + target
end

if __FILE__ == $PROGRAM_NAME
    p mechanical_accumulator(5)
    p mechanical_accumulator(7)
end


