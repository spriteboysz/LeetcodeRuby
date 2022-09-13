# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 23:42
# FilePath: 剑指 Offer 22. 链表中倒数第k个节点.rb
# Description: 

load 'common/ListNode.rb'

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def get_kth_from_end(head, k)
    fast, slow = head, head
    while fast and k > 0
        fast = fast.next
        k -= 1
    end
    while fast
        fast = fast.next
        slow = slow.next
    end
    slow
end

head = '[1,2,3,4,5]'
p get_kth_from_end(ListNode.create(head), 2).to_s



