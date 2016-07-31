defmodule Hangmain.MainTest do
  use ExUnit.Case
  doctest Hangman.Main

  import Hangman.Main

  test "blank_word fn turns the string into all underscores" do
    assert blank_word("joe") == "___"
  end
end
