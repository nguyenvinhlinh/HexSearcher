defmodule HexSearcherTest do
  use ExUnit.Case

  test "fetch_xml" do
    response = HexSearcher.fetch_xml("cow")
    assert elem(response, 0) == :ok
  end
end
