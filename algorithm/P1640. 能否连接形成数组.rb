# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:21
# FilePath: P1640. 能否连接形成数组.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
    refactor = []
    pieces.each do |v|
        index = arr.index(v[0])
        return false if index.nil?
        refactor[index] = v
    end
    refactor.flatten.compact == arr
end

if __FILE__ == $PROGRAM_NAME
    p can_form_array(arr = [91, 4, 64, 78], pieces = [[78], [4, 64], [91]])
    p can_form_array(arr = [91, 4, 64, 78], pieces = [[92]])
end
