-module(math_operations).
-export([start/0]).

start() ->
    io:format("Hello World!~n"),
    io:format("What would you like to do?~n"),
    io:format("[1] Simple arithmetic operations with two numbers.~n"),
    io:format("[2] Find the circumference and area of a circle using the radius.~n"),
    io:format("[3] Find the sine and cosine of an angle.~n"),
    io:format("[4] Calculate the volume of a shape.~n"),
    {ok, [Choice]} = io:fread(" ", "~d"),
    handle_choice(Choice),
    io:format("Have a great day!~n"),
    io:format("(Type: math_operations:start(). to start again)~n").

handle_choice(1) -> arithmetic_operations();
handle_choice(2) -> calculate_circle();
handle_choice(3) -> trigonometric_operations();
handle_choice(4) -> calculate_volume();
handle_choice(_) -> io:format("Invalid choice.~n").

arithmetic_operations() ->
    io:format("Enter first number: "),
    FirstNum = read_number(),
    io:format("Enter second number: "),
    SecondNum = read_number(),
    io:format("Addition: ~w~n", [FirstNum + SecondNum]),
    io:format("Subtraction: ~w~n", [FirstNum - SecondNum]),
    io:format("Multiplication: ~w~n", [FirstNum * SecondNum]),
    case SecondNum =:= 0 of
        true  -> io:format("Cannot divide by zero!~n");
        false -> io:format("Division: ~w~n", [FirstNum / SecondNum])
    end.

calculate_circle() ->
    io:format("Enter the radius of the circle: "),
    Radius = read_number(),
    io:format("Circumference: ~w~n", [circumference(Radius)]),
    io:format("Area: ~w~n", [area(Radius)]).

trigonometric_operations() ->
    io:format("Enter an angle in radians: "),
    Angle = read_number(),
    io:format("Sine: ~w~n", [math:sin(Angle)]),
    io:format("Cosine: ~w~n", [math:cos(Angle)]).

calculate_volume() ->
    io:format("What shape do you want to find the volume of?~n"),
    io:format("[1] Pyramid~n"),
    io:format("[2] Cube~n"),
    io:format("[3] Rectangular Prism~n"),
    io:format("[4] Sphere~n"),
    {ok, [ShapeChoice]} = io:fread(" ", "~d"),
    case ShapeChoice of
        1 -> calculate_pyramid_volume();
        2 -> calculate_cube_volume();
        3 -> calculate_rectangular_prism_volume();
        4 -> calculate_sphere_volume();
        _ -> io:format("Invalid choice.~n")
    end.

calculate_pyramid_volume() ->
    io:format("Enter the base area of the pyramid: "),
    BaseArea = read_number(),
    io:format("Enter the height of the pyramid: "),
    Height = read_number(),
    Volume = (1/3) * BaseArea * Height,
    io:format("Volume of the pyramid: ~w~n", [Volume]).

calculate_cube_volume() ->
    io:format("Enter the length of a side of the cube: "),
    SideLength = read_number(),
    Volume = math:pow(SideLength, 3),
    io:format("Volume of the cube: ~w~n", [Volume]).

calculate_rectangular_prism_volume() ->
    io:format("Enter the length of the rectangular prism: "),
    Length = read_number(),
    io:format("Enter the width of the rectangular prism: "),
    Width = read_number(),
    io:format("Enter the height of the rectangular prism: "),
    Height = read_number(),
    Volume = Length * Width * Height,
    io:format("Volume of the rectangular prism: ~w~n", [Volume]).

calculate_sphere_volume() ->
    io:format("Enter the radius of the sphere: "),
    Radius = read_number(),
    Volume = (4/3) * math:pi() * math:pow(Radius, 3),
    io:format("Volume of the sphere: ~w~n", [Volume]).

read_number() ->
    {ok, [Number]} = io:fread(" ", "~d"),
    Number.

circumference(Radius) ->
    2 * math:pi() * Radius.

area(Radius) ->
    math:pi() * math:pow(Radius, 2).











% -module(). //how many modules do I need?
% -module(circle).
% -export([start/0],[circumference/1]). //How do I export everything that needs to get exported? //is start() the only thing that needs to get exported??

% -export([circumference/1]).

% start() ->  % entry point of the program
%     io:format("What would you like to do? ").
%     io:format("[1] Simple addition, subtraction, multiplication and division with two numbers. 
% [2] Find the circumfrance and area of a circle using the radius. 
% [3] Find the sin and cosine of an equation. ").
%     AnswerChoice = {ok, [Number]} = io:fread(" ", "~d"),
%     Number.

%     case 
%         io:format("Enter first number: "),  % prompt
%         FirstNum = read_number(),   % calls the read function
%         io:format("Enter second number: "), % prompt
%         SecondNum = read_number(),  % calls the read function
%         io:format("Addition: ~w~n", [FirstNum + SecondNum]), % idk
%         io:format("Subtraction: ~w~n", [FirstNum - SecondNum]), % idk
%         io:format("Multiplication: ~w~n", [FirstNum * SecondNum]), % idk
%         case SecondNum =:= 0 of     % this is incase somebody tries to divide by zero. 
%             true ->
%                 io:format("Cannot divide by zero!~n");
%             false ->
%                 io:format("Division: ~w~n", [FirstNum / SecondNum])
%         end.


% read_number() ->  %
%     {ok, [Number]} = io:fread(" ", "~d"),
%     Number.

% circumference(Radius) -> % Function to calculate the circumference of a circle
%     2 * math:pi() * Radius.

% area(Radius) -> %function finds area of the circle. 
%     math:pi() * math:pow(Radius, 2).




% -module(math_operations).
% -export([start/0]).

% % Entry point of the program
% start() ->
%     io:format("Enter first number: "),            % Prompt for the first number
%     FirstNum = read_number(),                     % Read the first number
%     io:format("Enter second number: "),           % Prompt for the second number
%     SecondNum = read_number(),                    % Read the second number
%     perform_operations(FirstNum, SecondNum).      % Perform operations with the numbers

% % Function to read a single integer from input
% read_number() ->
%     {ok, [Number]} = io:fread(" ", "~d"),         % Read a single integer
%     Number.                                       % Return the read number

% % Function to perform arithmetic operations and display results
% perform_operations(FirstNum, SecondNum) ->
%     % Display addition result
%     io:format("Addition: ~w~n", [FirstNum + SecondNum]),
%     % Display subtraction result
%     io:format("Subtraction: ~w~n", [FirstNum - SecondNum]),
%     % Display multiplication result
%     io:format("Multiplication: ~w~n", [FirstNum * SecondNum]),
%     % Check if the second number is zero
%     case SecondNum =:= 0 of
%         true ->
%             io:format("Cannot divide by zero!~n"); % Display error message if dividing by zero
%         false ->
%             io:format("Division: ~w~n", [FirstNum / SecondNum]) % Display division result if not dividing by zero
%     end.
