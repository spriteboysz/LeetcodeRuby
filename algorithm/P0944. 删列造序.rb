# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 22:47
# FilePath: P0944. 删列造序.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
    cnt = 0
    (0...strs[0].length).each { |j|
        (1...strs.length).each { |i|
            if strs[i - 1][j] > strs[i][j]
                cnt += 1
                break
            end
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_deletion_size(strs = ["cba", "daf", "ghi"])
end


