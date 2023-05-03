# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 16:37
# FilePath: P2583. 二叉树中的第 K 大层和.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_largest_level_sum(root, k)
    levels = []
    queue = [root]
    until queue.empty?
        level, size = 0, queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level += node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        levels << level
    end
    levels.length < k ? -1 : levels.sort[-k]
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[5,8,9,2,1,3,7,4,6]")
    p kth_largest_level_sum(root, k = 2)
end


