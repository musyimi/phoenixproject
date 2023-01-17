defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context
  """
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", first_name: "Alois", last_name: "Mabele"},
      %User{id: "2", first_name: "lois", last_name: "Griffin"},
      %User{id: "3", first_name: "Alis", last_name: "Mabele"},
      %User{id: "4", first_name: "Als", last_name: "Mabele"},
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
