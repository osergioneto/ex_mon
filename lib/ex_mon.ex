defmodule ExMon do
  alias ExMon.{Player, Game}

  @computer_name "Robotinik"
  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end

  def start_game(player) do
    @computer_name
      |> ExMon.create_player(:punch, :cure, :kick)
      |> Game.start(player)
  end
end
