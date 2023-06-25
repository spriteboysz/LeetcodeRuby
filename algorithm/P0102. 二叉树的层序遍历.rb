# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 12:01
# FilePath: P0102. 二叉树的层序遍历.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    levels, queue = [], [root]
    until queue.empty?
        return [] if root.nil?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        levels << level
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p level_order(TreeNode.create("[3,9,20,null,null,15,7]"))
end
