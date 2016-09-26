# ElixirRecursiveFile
The library is extension of standard [`File`](http://elixir-lang.org/docs/stable/elixir/File.html) module for recursive directory.

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


## Installation
Add `elixir_recursive_file` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:elixir_recursive_file, github: "faithandbrave/elxir_recursive_file"}]
end
```

