gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require_relative '../lib/node'
require 'pry'

# append - adds a new piece of data (data can really be anything) to the list
# count - tells us how many things are in the list
# to_string - generates a string of all the elements in the list, separated by spaces

  class LinkedTest < Minitest::Test
    def test_to_see_if_test_works
      list = LinkedList.new
      assert_equal nil, list.head
      list.append("doop")
      assert_equal "doop", list.head.data
    end

    def test_for_head
      list = LinkedList.new
      list.append("doop")
      list.append("plop")
      list.append("dar")
      assert_equal "doop", list.head.data
    end

    def test_if_count_works
      list = LinkedList.new
      list.append("bloop")
      list.append("deep")
      list.append("plop")
      assert_equal 3, list.count
    end

    def to_see_if_string_works
      list = LinkedList.new
      list.append("bloop")
      list.append("deep")
      list.append("plop")
      assert_equal "bloop deep plot", list.to_string
    end

    def test_for_prepend
      list = LinkedList.new
      list.append("bloop")
      list.append("deep")
      list.append("plop")
      list.prepend("bruh")
      assert_equal "bruh", list.head.data
      assert_equal "bruh bloop deep plop", list.to_string
    end

    def test_for_insert
      list = LinkedList.new
      list.append("bloop")
      list.append("bleep")
      list.append("plop")
      list.insert(1,"blop")
      assert_equal "bloop blop bleep plop", list.to_string
    end

    # def test_for_include
    #   list = LinkedList.new
    #   list.append("pleep")
    #   list.append("dooop")
    #   list.append("dar")
    #   list.append("cha")
    #   assert_equal true, list.include?("cha")
    #   assert_equal true, list.include?("pleep")
    #   refute_equal "dar", list.head.data
    # end

    # def test_for_pop
    #   list.LinkedList.new
    #   list.append("Doop")
    #   list.append("boom")
    #   list.append("plor")
    #   assert_equal "plor", list.plop
    # end

      # def test_if_everything_works
      #   list.LinkedList.new
      #   list.append("")
      #   list.append("")
      #   list.append("")
      #   list.prepend("")
      #   assert_equal "", list.to_string
      #   list.insert()
      #   assert_equal "", list.to_string
      #   refute_equal "", list.to_string
      # end

    #   def test_for_odd_balls_later
    #     list = LinkedList.new
    #     list.append("")
    #     list.prepend("")
    #     list.insert()
    #     assert_equal "", list.to_string
    #   end
    #
    #   def test_possbile_edges #not enough time to impliment
    #     list = LinkedList.new
    #     list.prepend("dop")
    #     assert_equal "dop", list.head.data
    #     list.append("beep")
    #     list.append("top")
    #     refute_equal true, list.find?("fom")
    #   end
    #
    #   def test_unexpected
    #     list = LinkedList.new
    #     list.prepend("dooop")
    #     list.prepend("doop")
    #     list.prepend("dop")
    #     assert_equal "dop doop dooop", list.to_string
    #   end
    end
