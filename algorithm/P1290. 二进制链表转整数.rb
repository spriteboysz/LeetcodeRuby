# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:38
# FilePath: P1290. 二进制链表转整数.rb
# Description: 

load 'common/ListNode.rb'

# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
    num = 0
    while head
        num = num * 2 + head.val
        head = head.next
    end
    num
end

head = "[1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]"
p get_decimal_value(ListNode.create(head))



