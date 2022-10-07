# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 13:39
# FilePath: P0103. 二叉树的锯齿形层序遍历.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
    return [] if root.nil?
    levels, queue = [], [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |i|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        level.reverse! if levels.length.odd?
        levels << level
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p zigzag_level_order(TreeNode.create("[3,9,20,null,null,15,7]"))
end
