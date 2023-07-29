# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:04
# FilePath: P0705. 设计哈希集合.rb
# Description:

load "common/leetcode.rb"

class MyHashSet
    @hash

    def initialize
        @hash = Hash.new(0)
    end

=begin
    :type key: Integer
    :rtype: Void
=end
    def add(key)
        @hash[key] = 1
    end

=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        @hash.delete(key)
    end

=begin
    :type key: Integer
    :rtype: Boolean
=end
    def contains(key)
        @hash[key] == 1
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = MyHashSet.new
    obj.add(1)
    obj.add(2)
    p obj.contains(3)
    p obj.contains(2)
    obj.remove(2)
    p obj.contains(2)
end


