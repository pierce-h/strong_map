defmodule StrongMapTest do
  use ExUnit.Case

  doctest StrongMap

  describe "permit/2" do
    test "permits specified keys" do
      assert StrongMap.permit(%{foo: "test", bar: "test 2"}, [:foo]) == %{foo: "test"}
    end

    test "converts stringified keys to atoms" do
      assert StrongMap.permit(%{"foo" => "test", "bar" => "test 2"}, [:foo]) == %{foo: "test"}
    end
  end
end
