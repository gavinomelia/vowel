defmodule TextTest do
  use ExUnit.Case

   test "vowel_count" do
    assert Text.vowel_count("bcd") == 0
    assert Text.vowel_count("abd") == 1
    #assert Text.vowel_count("abade") == 3
  end

end
