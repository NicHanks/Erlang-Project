-module(math_operations).
-export([start/0]).

start() ->
    io:format("Enter first number: "),
    FirstNum = read_number(),
    io:format("Enter second number: "),
    SecondNum = read_number(),
    io:format("Addition: ~w~n", [FirstNum + SecondNum]),
    io:format("Subtraction: ~w~n", [FirstNum - SecondNum]),
    io:format("Multiplication: ~w~n", [FirstNum * SecondNum]),
    case SecondNum =:= 0 of
        true ->
            io:format("Cannot divide by zero!~n");
        false ->
            io:format("Division: ~w~n", [FirstNum / SecondNum])
    end.

read_number() ->
    {ok, [Number]} = io:fread(" ", "~d"),
    Number.
