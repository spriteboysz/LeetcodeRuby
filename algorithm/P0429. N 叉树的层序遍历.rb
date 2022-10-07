# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 15:55
# FilePath: P0429. N 叉树的层序遍历.rb
# Description:

load "common/leetcode.rb"

# Definition for a Node.
class Node
    attr_accessor :val, :children

    def initialize(val)
        @val = val
        @children = []
    end
end

# @param {Node} root
# @return {List[List[int]]}
def level_order(root)
    return [] if root.nil?
    levels, queue = [], [root]
    until queue.empty?
        level, size = [], queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            node.children.each { |child|
                queue << child unless child.nil?
            }
        end
        levels << level
    end
    levels
end

if __FILE__ == $PROGRAM_NAME

end
