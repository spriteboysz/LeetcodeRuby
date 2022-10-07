# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:26
# FilePath: P2224. 转化时间需要的最少操作数.rb
# Description:

load "common/leetcode.rb"

# @param {String} current
# @param {String} correct
# @return {Integer}
def convert_time(current, correct)
    src, dst = current.split(":").map(&:to_i), correct.split(":").map(&:to_i)
    diff = dst[0] * 60 + dst[1] - src[0] * 60 - src[1]
    cnt = 0
    [60, 15, 5, 1].each do |min|
        cnt += diff / min
        diff %= min
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p convert_time(current = "02:30", correct = "04:35")
end
