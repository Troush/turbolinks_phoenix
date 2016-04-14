# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TurbolinksPhoenix.Repo.insert!(%TurbolinksPhoenix.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
defmodule Recursion do
	def multiple_seed(n) when n <= 1 do
		
	end

	def multiple_seed(n) do
		TurbolinksPhoenix.Repo.insert!(%TurbolinksPhoenix.User{name: "TestUser", email: "test@email.com"})	
		multiple_seed(n - 1)
	end
end
Recursion.multiple_seed(100)