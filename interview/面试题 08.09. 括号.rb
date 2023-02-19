# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-18 22:35
# FilePath: 面试题 08.09. 括号.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    @paths, @path = [], []

    def backtrace(left, right)
        return if left < 0 || right < 0 || left > right
        if left == 0 && right == 0
            @paths << @path.join
            return
        end
        @path << "("
        backtrace(left - 1, right)
        @path.pop
        @path << ")"
        backtrace(left, right - 1)
        @path.pop
    end

    backtrace(n, n)
    @paths
end

if __FILE__ == $PROGRAM_NAME
    p generate_parenthesis(3)
end


