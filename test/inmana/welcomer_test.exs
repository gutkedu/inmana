defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true
  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the use is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "You are very special"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "eduardo", "age" => "25"}
      expected_result = {:ok, "Welcome eduardo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is underage, returns an error" do
      params = %{"name" => "eduardo", "age" => "16"}
      expected_result = {:error, "You shall not pass eduardo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
