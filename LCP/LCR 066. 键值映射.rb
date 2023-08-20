# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 13:08
# FilePath: LCR 066. 键值映射.rb
# Description:

load "common/leetcode.rb"

class MapSum

=begin
    Initialize your data structure here.
=end
    def initialize
        @hash = Hash.new(0)
    end

=begin
    :type key: String
    :type val: Integer
    :rtype: Void
=end
    def insert(key, val)
        @hash[key] = val
    end

=begin
    :type prefix: String
    :rtype: Integer
=end
    def sum(prefix)
        cnt = 0
        @hash.each_pair { |k, v|
            cnt += v if k.start_with?(prefix)
        }
        cnt
    end
end

if __FILE__ == $PROGRAM_NAME
    obj = MapSum.new
    obj.insert("apple", 3)
    p obj.sum("ap")
    obj.insert("app", 2)
    p obj.sum("ap")
    p obj.sum("a")
end


