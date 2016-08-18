defmodule Hangman.Main do
  def gen_word do
    words = ["mango"]
    Enum.random(words)
  end

  def blank_word(word) do
    len = String.length word
    String.duplicate("_", len)
  end

  def user_guess do
    guess = IO.gets "Guess a letter: "
    String.replace(guess, "\n", "")
  end

  def check_guess(guess, word)do
    Enum.map(String.graphemes(word), fn letter ->
      cond do
        guess == letter ->
          "You guessed a correct letter"
        guess != letter ->
          "You guessed an incorrect letter"
      end
    end)
  end

  def convert(blank_word) do

  end

  def round do
    word = gen_word
    |> blank_word
    |> IO.puts
    IO.puts word
    guess = user_guess
    check_guess(guess, word)
  end
end

#def blank_word do
#    word = gen_word
#    blank_word = Enum.each(word, fn letter ->
#      index = Enum.find_index(word, fn char -> char == letter end)
#      List.replace_at(word, index, "_") end)
#    IO.puts blank_word
#  end

