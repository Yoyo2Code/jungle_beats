gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test
  def test_node_has_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node
    node = Node.new("pop")
    assert_equal nil, node.next_node
  end

end
