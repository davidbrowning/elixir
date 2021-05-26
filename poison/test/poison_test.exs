defmodule PoisonTest do
  use ExUnit.Case
  doctest Poison
#  test "loading bar" do
#    IO.puts ""
#    IO.puts "Custom color:"
#    
#    format = [
#      bar_color: [IO.ANSI.color_background(231)],
#      blank_color: [IO.ANSI.color_background(173)],
#      bar: " ",
#      blank: " ",
#      left: " ", right: " ",
#    ]
#    
#    Enum.each 1..100, fn (i) ->
#      ProgressBar.render(i, 100, format)
#      :timer.sleep 30
#    end
#  end

  test "http call" do
    url = "httpbin.org"
    {:ok, response} = HTTPoison.get(url)
    assert response.status_code == 200
  end

  test "greets the world" do
    assert Poison.hello() == :world
  end
end
