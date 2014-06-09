require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require_relative "../lib/dakine"

Minitest::Reporters.use!

describe Dakine do
  it "just testing" do
    assert true
  end
end