# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 17:10
# FilePath: P0637. 二叉树的层平均值.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
    avg, queue = [], [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        avg << level.sum * 1.0 / level.length
    end
    avg
end

if __FILE__ == $PROGRAM_NAME
    p average_of_levels(TreeNode.create("[3,9,20,15,7]"))
end
