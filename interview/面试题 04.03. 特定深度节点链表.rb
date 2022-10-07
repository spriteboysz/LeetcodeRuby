# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 21:40
# FilePath: 面试题 04.03. 特定深度节点链表.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} tree
# @return {ListNode[]}
def list_of_depth(tree)
    levels, queue = [], [tree]
    until queue.empty?
        size = queue.length
        dummy = ListNode.new(-1)
        cur = dummy
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            cur.next = ListNode.new(node.val)
            cur = cur.next
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        levels << dummy.next
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p list_of_depth(TreeNode.create("[1,2,3,4,5,null,7,8]")).map { |el| el.to_s }
end
