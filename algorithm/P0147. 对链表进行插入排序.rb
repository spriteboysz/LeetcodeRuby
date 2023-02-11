# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 17:23
# FilePath: P0147. 对链表进行插入排序.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def insertion_sort_list(head)
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    nodes.sort_by! { |node| node.val }
    nodes.each_with_index do |node, i|
        next if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[nodes.length - 1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p insertion_sort_list(ListNode.create("[-1,5,3,4,0]")).to_s
end


