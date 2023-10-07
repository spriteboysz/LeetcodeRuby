# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 14:59
# FilePath: LCR 027. 回文链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    return true if head.nil? or head.next.nil?
    values = []
    until head.nil?
        values << head.val
        head = head.next
    end
    values == values.reverse
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(ListNode.create("[1,2,3,3,2,1]"))
end


