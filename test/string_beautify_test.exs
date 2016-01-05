defmodule StringBeautifyTest  do
  use ExUnit.Case

  test "beautify" do
    paragraph = "Hello word, this is the first paragraph which can be beautified with my module. This paragraph should be long enough to test the module. And yes, now I think it is long enough"
    expected = ["Hello word, this is the", "first paragraph which can",
                "be beautified with my", "module. This paragraph", "should be long enough to",
                "test the module. And yes,", "now I think it is long", "enough"]
    result = StringBeautify.beautify(paragraph, 25)
    assert result == expected
  end
end
