# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:27
# FilePath: 剑指 Offer 32 - I. 从上到下打印二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[]}
def level_order(root)
    levels, queue = [], [root]
    until queue.empty?
        size = queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            levels << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p level_order(TreeNode.create("[3,9,20,null,null,15,7]"))
end
