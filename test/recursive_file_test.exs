defmodule RecursiveFileTest do
  use ExUnit.Case

  test "recursive file" do
    result = RecursiveFile.ls!("priv/test_dir")
    expected = ["priv/test_dir/a.txt", "priv/test_dir/b/c.txt"]
    assert result == expected
  end
end
