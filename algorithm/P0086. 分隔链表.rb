# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 12:19
# FilePath: P0086. 分隔链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    return nil if head.nil?
    lt, gt = [], []
    until head.nil?
        if head.val < x
            lt << head
        else
            gt << head
        end
        head = head.next
    end
    nodes = lt + gt
    nodes.each_with_index do |node, i|
        break if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[-1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p partition(ListNode.create("[1,4,3,2,5,2]"), 3).to_s
end


