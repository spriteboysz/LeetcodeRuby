# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 22:13
# FilePath: P1161. 最大层内元素和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def max_level_sum(root)
    levels, queue = [], [root]
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
    levels.index(levels.max) + 1
end

if __FILE__ == $PROGRAM_NAME
    p max_level_sum(TreeNode.create("[989,null,10250,98693,-89388,null,null,null,-32127]"))
end
