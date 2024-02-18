-module(math_operations).
-export([add/2][factorial/1]).
%% -module(factorial).
%% -export([factorial/1]).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

add(X, Y) ->
    X + Y.
