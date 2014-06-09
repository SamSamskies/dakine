require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require_relative "../lib/dakine"

Minitest::Reporters.use!

describe Dakine do
  describe "translating text" do
    it "can translate a sentence with 'a lot of'" do
      text = "A lot of computers are needed at schools."
      translated = "choke da kine are needed at da kine."

      assert_equal Dakine.translate(text), translated
    end
  end
end