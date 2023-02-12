# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:30
# FilePath: P0278. 第一个错误的版本.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} version
# @return {boolean} whether the version is bad
def is_bad_version(version)
    version >= 4 ? true : false
end

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    left, right = 1, n
    while left <= right
        mid = left + (right - left) / 2
        if is_bad_version(mid)
            right = mid - 1
        else
            left = mid + 1
        end
    end
    left
end

if __FILE__ == $PROGRAM_NAME
    p first_bad_version(5)
end


