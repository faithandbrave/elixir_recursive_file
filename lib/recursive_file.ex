defmodule RecursiveFile do
  @doc """
  Returns filepath list from therecursive directory files.

  `File.ls!` function returns filename list, however the function returns filepath list.

  ##Example
  ```
  #directory structure
  + test_dir
    a.txt
    + b
      c.txt
  ```

  ```elixir
  > RecursiveFile.ls!("test_dir")
  > ["test_dir/a.txt", "test_dir/b/c.txt"]
  ```
  """
  @spec ls!(Path.t) :: [binary] | no_return
  def ls!(dir \\ ".") do
    Enum.reduce(File.ls!(dir), [], fn file, acc ->
      fname = "#{dir}/#{file}"
      if File.dir?(fname) do
        acc ++ ls!(fname)
      else
        acc ++ [fname]
      end
    end)
  end
end
