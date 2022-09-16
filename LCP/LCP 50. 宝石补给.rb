# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:58
# FilePath: LCP 50. 宝石补给.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} gem
# @param {Integer[][]} operations
# @return {Integer}
def give_gem(gem, operations)
    operations.each { |operation|
        cur = gem[operation[0]] / 2
        gem[operation[0]] -= cur
        gem[operation[1]] += cur
    }
    gem.max - gem.min
end

if __FILE__ == $PROGRAM_NAME
    p give_gem(gem = [100, 0, 50, 100], operations = [[0, 2], [0, 1], [3, 0], [3, 0]])
end
