# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 20:52
# FilePath: 面试题 02.02. 返回倒数第 k 个节点.rb
# Description: 

load 'common/ListNode.rb'

# @param {ListNode} head
# @param {Integer} k
# @return {Integer}
def kth_to_last(head, k)
    fast, slow = head, head
    while fast and k > 0
        fast = fast.next
        k -= 1
    end
    while fast
        fast = fast.next
        slow = slow.next
    end
    slow.val
end

p kth_to_last(ListNode.create("[1,2,3,4,5]"), 2)



