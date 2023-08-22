# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 22:30
# FilePath: P0406. 根据身高重建队列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} people
# @return {Integer[][]}
def reconstruct_queue(people)
    people.sort! { |a, b| a[0] != b[0] ? b[0] - a[0] : a[1] - b[1] }
    reconstruct = []
    people.each { |p|
        reconstruct.insert(p[1], p)
    }
    reconstruct
end

if __FILE__ == $PROGRAM_NAME
    p reconstruct_queue(people = [[7, 0], [4, 4], [7, 1], [5, 0], [6, 1], [5, 2]])
end


