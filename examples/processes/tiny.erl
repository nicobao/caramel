% Source code generated with Caramel.
-module(tiny).

-export([loop/2]).
-export([start/1]).

loop(T, Recv) ->
  io:format(<<"~p\n">>, [T | []]),
  timer:sleep(T),
  loop(erlang:'*'(T, 2), Recv).

start(T) -> process:make(fun
  (_Self, R) -> loop(T, R)
end).

