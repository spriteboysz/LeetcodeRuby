# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 13:15
# FilePath: LCR 078. 合并 K 个升序链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
    nodes = []
    lists.each { |list|
        head = list
        while head
            nodes << head
            head = head.next
        end
    }
    return nil if nodes.empty?
    nodes.sort_by! { |node| node.val }
    (1...nodes.size).each { |i|
        nodes[i - 1].next = nodes[i]
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    list1 = ListNode.create("[1,4,5]")
    list2 = ListNode.create("[1,3,4]")
    list3 = ListNode.create("[2,6]")
    p merge_k_lists([list1, list2, list3]).to_s
end


