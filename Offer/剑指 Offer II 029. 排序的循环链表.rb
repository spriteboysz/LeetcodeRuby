# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-24 21:36
# FilePath: 剑指 Offer II 029. 排序的循环链表.rb
# Description:

load "common/leetcode.rb"

# @param {Node} head
# @param {Integer} insert_val
# @return {Node}
def insert(head, insert_val)
    if head.nil?
        head = ListNode.new(insert_val)
        head.next = head
        return head
    end
    p = head
    until insert_val.between?(p.val, p.next.val)
        p = p.next
        break if p == head
        break if p.val > p.next.val && (insert_val >= p.val || insert_val <= p.next.val )
    end
    p.next = ListNode.new(insert_val, p.next)
    head
end

if __FILE__ == $PROGRAM_NAME
    p insert(ListNode.create("[3,4,1]"), 2)
end


