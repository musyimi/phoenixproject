defmodule RumblWeb.UserView do
use RumblWeb, :view

alias Rumbl.Accounts

def first_name(%Accounts.User{first_name: first_name}) do
  first_name
  |> String.split(" ")
  |> Enum.at(0)

end

end
