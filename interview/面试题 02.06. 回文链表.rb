# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:57
# FilePath: 面试题 02.06. 回文链表.rb
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
    p is_palindrome(ListNode.create("[1,2,2,1]"))
end


