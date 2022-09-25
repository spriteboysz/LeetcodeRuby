# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:49
# FilePath: P1598. 文件夹操作日志搜集器.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
    stack = []
    logs.each do |log|
        next if log == "./"
        if log == "../"
            if stack.length > 0
                stack.pop
            end
        else
            stack << log
        end
    end
    stack.length
end

if __FILE__ == $PROGRAM_NAME
    p min_operations(logs = %w[d1/ d2/ ./ d3/ ../ d31/])
end
