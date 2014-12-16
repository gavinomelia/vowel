defmodule NumTest do

  use ExUnit.Case

  test "even_count" do
   assert Num.even_count([1, 3, 3]) == 0
   assert Num.even_count([1, 2, 8]) == 2
   assert Num.even_count([1, 2, 8, 456, 8888, 15]) == 4
 end

 test "odd_count" do
  assert Num.odd_count([2, 3, 3]) == 2
  assert Num.odd_count([1, 2, 8]) == 1
  assert Num.odd_count([1, 2, 8, 456, 8888, 15]) == 2
end

test "even_numbers" do
  assert Num.even_numbers([1, 3, 3]) == []
  assert Num.even_numbers([1, 2, 8]) == [2, 8]
  assert Num.even_numbers([1, 2, 8, 456, 8888, 15]) == [2, 8, 456, 8888]
end

test "odd_numbers" do
  assert Num.odd_numbers([1, 3, 48]) == [1, 3]
  assert Num.odd_numbers([1, 2, 8]) == [1]
  assert Num.odd_numbers([1, 2, 8, 456, 8888, 15]) == [1, 15]
end

test "even_number_set" do
  assert Num.even_number_set([1, 2, 8, 456, 8888, 15, 8, 2, 4, 2, 4]) == [2, 8, 456, 8888, 4]
end

test "odd_number_set" do
 assert Num.odd_number_set([1, 2, 8, 456, 8888, 15, 1, 15, 15]) == [1, 15]
end
end