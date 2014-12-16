defmodule Num do
  def even_count(list_of_numbers) do
    Enum.count list_of_numbers, fn(each_number) -> 
      rem(each_number, 2) == 0
    end
  end

  def odd_count(list_of_numbers) do
    Enum.count list_of_numbers, fn(each_number) -> 
      rem(each_number, 2) == 1
    end
  end

  def even_numbers(list_of_numbers) do
    Enum.filter list_of_numbers, fn(each_number) -> 
      rem(each_number, 2) == 0
    end
  end

  def odd_numbers(list_of_numbers) do
    Enum.filter list_of_numbers, fn(each_number) -> 
      rem(each_number, 2) == 1
    end
  end

  def even_number_set(list_of_numbers) do
    list_of_numbers |> even_numbers |> Enum.uniq
  end

  def odd_number_set(list_of_numbers) do
    list_of_numbers |> odd_numbers |> Enum.uniq
  end
end