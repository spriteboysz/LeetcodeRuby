# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 17:15
# FilePath: P2471. 逐层排序二叉树所需的最少操作数目.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer}
def minimum_operations(root)
    return 0 if root.nil?
    cnt, queue = 0, [root]
    until queue.empty?
        size, values = queue.length, []
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            values << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        hash = {}
        values.size.times { |i| hash[values[i]] = i }
        sorted = values.sort
        size.times do |i|
            next if values[i] == sorted[i]
            temp = values[i]
            values[i], values[hash[sorted[i]]] = values[hash[sorted[i]]], values[i]
            hash[temp] = hash[sorted[i]]
            hash[sorted[i]] = i
            cnt += 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p minimum_operations(TreeNode.create("[1,4,3,7,6,8,5,null,null,null,null,9,null,10]"))
end


