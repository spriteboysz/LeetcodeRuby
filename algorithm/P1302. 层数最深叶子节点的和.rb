# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 21:15
# FilePath: P1302. 层数最深叶子节点的和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def deepest_leaves_sum(root)
    last, queue = [], [root]
    until queue.empty?
        last, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            last << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
    end
    last.sum
end

if __FILE__ == $PROGRAM_NAME
    p deepest_leaves_sum(TreeNode.create("[6,7,8,2,7,1,3,9,null,1,4,null,null,null,5]"))
end
