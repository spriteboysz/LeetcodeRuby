# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:04
# FilePath: P1609. 奇偶树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Boolean}
def is_even_odd_tree(root)
    index, queue = 0, [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
        index = 1 - index
        return false if level.any? { |el| el % 2 != index }
        level.any? { |el| el % 2 != index }
        level.reverse! if index == 0
        level.each_with_index do |el, i|
            next if i == 0
            return false if level[i - 1] >= el
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_even_odd_tree(TreeNode.create("[11,8,6,1,3,9,11,30,20,18,16,12,10,4,2,17]"))
end
