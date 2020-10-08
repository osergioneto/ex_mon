defmodule ExMon.Game.Status do
  alias ExMon.Game
  def print_start_game() do
    IO.puts("\n===== The game has started =====\n")
    IO.inspect(Game.info())
    IO.puts("----------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n===== Invalid move: #{move}. =====\n")
  end
end
