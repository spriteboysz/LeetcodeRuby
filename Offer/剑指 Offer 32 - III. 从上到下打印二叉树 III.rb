# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:35
# FilePath: 剑指 Offer 32 - III. 从上到下打印二叉树 III.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?
    levels, queue = [], [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        level.reverse! if levels.length % 2 == 1
        levels << level
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p level_order(TreeNode.create("[3,9,20,null,null,15,7]"))
end
