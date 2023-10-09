# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 10:55
# FilePath: LCR 123. 图书整理 I.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Integer[]}
def reverse_book_list(head)
    return [] if head.nil?
    values = []
    until head.nil?
        values << head.val
        head = head.next
    end
    values.reverse
end

if __FILE__ == $PROGRAM_NAME
    p reverse_book_list(head = ListNode.create("[3,6,4,1]"))
end


