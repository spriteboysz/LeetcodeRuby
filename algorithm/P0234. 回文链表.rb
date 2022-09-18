# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:51
# FilePath: P0234. 回文链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    values1, values2 = [], []
    while head
        values1 << head.val
        values2.insert(0, head.val)
        head = head.next
    end
    values1 == values2
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(ListNode.create "[1,2,2,1]")
end
