# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:41
# FilePath: LCR 172. 统计目标成绩的出现次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} scores
# @param {Integer} target
# @return {Integer}
def count_target(scores, target)
    cnt = 0
    scores.each { |score| cnt += 1 if score == target }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_target(scores = [2, 2, 3, 4, 4, 4, 5, 6, 6, 8], target = 4)
end


