defmodule Prime do
  require Integer

  @moduledoc """
  The module Prime, will generate list of prime numbers within a given range
  """

  @doc """
  Returns a list of all prime numbers based on the number(n) given.
  n determines the range.i.e if n is 5 , the generate_prime_numbers/1 will
  return all the prime numbers within the range 1..5

  ## Example
  iex > Prime.generate_prime_numbers(5)
       [2, 3, 5]
  iex > Prime.generate_prime_numbers(10)
       [2, 3, 5, 7]
  """

  def generate_prime_numbers(n) do
    streamy =
      Stream.resource(
        fn -> 1 end,
        fn
          num when num > n ->
            {:halt, num}

          num ->
            case _is_prime?(num) do
              true -> {[num], num + 1}
              _ -> {[], num + 1}
            end
        end,
        fn num -> num end
      )

    streamy |> Enum.to_list()
  end

  defp _is_prime?(2), do: true

  defp _is_prime?(num) do
    !Enum.any?(2..(num - 1), fn divisor -> rem(num, divisor) == 0 end)
  end
end
