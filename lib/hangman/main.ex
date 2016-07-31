defmodule Hangman.Main do
  def gen_word do
    words = ["mango", "pineapple", "apple", "orange"]
    Enum.random(words)
    |> String.split("")
    |> List.delete_at(-1)
  end

  def blank_word(word) do
    Enum.map(word, fn letter ->
      index = Enum.find_index(word, fn letter -> letter == letter end)
      List.replace_at(word, index, "_") end)
  end
end
