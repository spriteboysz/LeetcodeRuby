# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 18:35
# FilePath: TreeNode.rb
# Description: TreeNode class

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right

    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left, @right = left, right
    end

    def self.create(data)
        return [] if data.nil?

        values = data[1..data.length - 2].split(',')
        root = new(values[0].to_i)
        queue = [root]
        i = 1
        until queue.empty?
            node = queue.shift
            break if node.nil?

            if values[i] != 'null'
                node.left = new(values[i].to_i)
                queue.append(node.left)
            end
            i += 1
            break if values[i].nil?

            if values[i] != 'null'
                node.right = new(values[i].to_i)
                queue.append(node.right)
            end
            i += 1
            break if values[i].nil?
        end
        root
    end

    def to_s(root = self)
        return '[]' if root.nil?

        queue = [root]
        values = []
        until queue.empty?
            node = queue.shift
            if node
                values.append(node.val.to_i)
                queue.append(node.left)
                queue.append(node.right)
            else
                values.append('null')
            end
        end
        values.pop while values.last == 'null'
        '[' + values.join(',') + ']'
    end
end

if __FILE__ == $PROGRAM_NAME
    # for test
    data = '[1,2,null,3]'
    root = TreeNode.create(data)
    p root.to_s
end



