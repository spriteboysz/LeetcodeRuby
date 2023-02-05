# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/5 22:02
# FilePath: P2432. 处理用时最长的那个任务的员工.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer[][]} logs
# @return {Integer}
def hardest_worker(n, logs)
    hash = Hash.new(0)
    start_time = 0
    logs.each do |log|
        id, end_time = *log
        hash[id] = [end_time - start_time, hash[id]].max
        start_time = end_time
    end
    max_id, max_time = -1, -1
    (0...n).each do |i|
        max_time, max_id = hash[i], i if hash[i] > max_time
    end
    max_id
end

if __FILE__ == $PROGRAM_NAME
    p hardest_worker(n = 26, logs = [[1, 1], [3, 7], [2, 12], [7, 17]])
end


