defmodule ExMon do
  alias ExMon.{Player, Game}
  alias ExMon.Game.{Status, Actions}
  alias ExMon.Game.Actions.Attack

  @computer_name "Robotinik"
  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end

  def start_game(player) do
    @computer_name
      |> ExMon.create_player(:punch, :cure, :kick)
      |> Game.start(player)

    Status.print_start_game()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)
  defp do_move({:ok, move}) do
    case move do
      :move_heal -> "Cura"
      move -> Actions.attack(move)
    end
  end
end
