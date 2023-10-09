# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 10:43
# FilePath: LCR 120. 寻找文件副本.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} documents
# @return {Integer}
def find_repeat_document(documents)
    visited = Hash.new(false)
    documents.each { |document|
        return document if visited.include?(document)
        visited[document] = true
    }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_repeat_document(documents = [2, 5, 3, 0, 5, 0])
end


