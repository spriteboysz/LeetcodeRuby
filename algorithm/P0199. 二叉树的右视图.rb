# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:35
# FilePath: P0199. 二叉树的右视图.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
    return [] if root.nil?
    right, queue = [], [root]
    until queue.empty?
        last, size = 0, queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            last = node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        right << last
    end
    right
end

if __FILE__ == $PROGRAM_NAME
    p right_side_view(TreeNode.create("[1,2,3,null,5,null,4]"))
end
