# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:48
# FilePath: 剑指 Offer II 027. 回文链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    values = []
    while head
        values << head.val
        head = head.next
    end
    values == values.reverse
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(ListNode.create("[1,2,3,3,2,1]"))
end
