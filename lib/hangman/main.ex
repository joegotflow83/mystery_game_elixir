defmodule Hangman.Main do
  def gen_word do
    words = ["mango", "orange", "grape", "pear"]
    Enum.random(words)
  end

  def blank_word(word) do
    len = String.length word
    String.duplicate("_", len)
  end
end

#def blank_word do
#    word = gen_word
#    blank_word = Enum.each(word, fn letter ->
#      index = Enum.find_index(word, fn char -> char == letter end)
#      List.replace_at(word, index, "_") end)
#    IO.puts blank_word
#  end

