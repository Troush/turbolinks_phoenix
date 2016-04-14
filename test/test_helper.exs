ExUnit.start

Mix.Task.run "ecto.create", ~w(-r TurbolinksPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r TurbolinksPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(TurbolinksPhoenix.Repo)

