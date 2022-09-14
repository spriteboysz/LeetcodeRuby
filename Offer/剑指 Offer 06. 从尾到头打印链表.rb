# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:20
# FilePath: 剑指 Offer 06. 从尾到头打印链表.rb
# Description: 

load 'common/ListNode.rb'

# @param {ListNode} head
# @return {Integer[]}
def reverse_print(head)
    values = []
    while head
        values.append(head.val)
        head = head.next
    end
    values.reverse
end

p reverse_print(ListNode.create("[1,2,3]"))



