# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:28
# FilePath: P0014. 最长公共前缀.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.include?("")
    return strs.first if strs.length == 1
    common = ""
    strs.first.chars.each_with_index do |c, i|
        (1...strs.length).each do |j|
            return common if strs[j][i] != c
        end
        common << c
    end
    common
end

if __FILE__ == $PROGRAM_NAME
    p longest_common_prefix(strs = %w[flower flow flight])
    p longest_common_prefix(strs = %w[dog racecar car])
end
