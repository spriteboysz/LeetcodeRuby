# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:40
# FilePath: 剑指 Offer II 044. 二叉树每层的最大值.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer[]}
def largest_values(root)
    return [] if root.nil?
    largest, queue = [], [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        largest << level.max
    end
    largest
end

if __FILE__ == $PROGRAM_NAME
    p largest_values(TreeNode.create("[1,2,3]"))
end
