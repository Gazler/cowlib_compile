try do
  :cow_hpack.decode("")
  IO.puts """
  #{IO.ANSI.green()}Compiled correctly#{IO.ANSI.reset()}

  Please run the following to make the compilation fail again:

  rm -rf _build deps && mix deps.get && mix run verify.exs
  """
rescue
  UndefinedFunctionError ->
    IO.puts """
    #{IO.ANSI.red()}Not compiled correctly#{IO.ANSI.reset()}

    Please run to fix the compilation:

    rm -rf deps/cowlib/ebin && mix run verify.exs
    """
end
