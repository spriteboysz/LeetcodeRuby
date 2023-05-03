# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 16:51
# FilePath: P2415. 反转二叉树的奇数层.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {TreeNode}
def reverse_odd_levels(root)
    return root if root.nil?
    queue, level = [root], -1
    until queue.empty?
        size, values, nodes = queue.length, [], []
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            values << node.val
            nodes << node
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        level += 1
        next unless level.odd?
        nodes.each_index do |i|
            nodes[i].val = values[-(1 + i)]
        end
    end
    root
end

if __FILE__ == $PROGRAM_NAME
    p reverse_odd_levels(TreeNode.create("[2,3,5,8,13,21,34]")).to_s
end


