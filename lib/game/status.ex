defmodule ExMon.Game.Status do
  def print_round_message(%{status: :started} = info) do
    IO.puts("\n===== The game has started =====\n")
    IO.inspect(info)
    IO.puts("----------------------------------")
  end
    IO.puts("----------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n===== Invalid move: #{move}. =====\n")
  end
end
