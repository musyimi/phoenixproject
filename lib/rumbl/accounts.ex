defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context
  """
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Alois", username: "Mabele"},
      %User{id: "2", name: "lois", username: "Griffin"},
      %User{id: "3", name: "Alis", username: "Mabele"},
      %User{id: "4", name: "Als", username: "Mabele"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
