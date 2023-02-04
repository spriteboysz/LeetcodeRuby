# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:21
# FilePath: P2545. 根据第 K 场考试的分数排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} score
# @param {Integer} k
# @return {Integer[][]}
def sort_the_students(score, k)
    score.sort_by! { |row| -row[k] }
end

if __FILE__ == $PROGRAM_NAME
    p sort_the_students(score = [[10, 6, 9, 1], [7, 5, 11, 2], [4, 8, 3, 15]], k = 2)
end


