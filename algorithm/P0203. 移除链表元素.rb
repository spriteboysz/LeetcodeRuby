# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:13
# FilePath: P0203. 移除链表元素.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return nil if head.nil?
    nodes = []
    until head.nil?
        nodes << head unless head.val == val
        head = head.next
    end
    return nil if nodes.empty?
    nodes.each_with_index do |node, i|
        break if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[-1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p remove_elements(ListNode.create("[1,2,6,3,4,5,6]"), 6).to_s
end


