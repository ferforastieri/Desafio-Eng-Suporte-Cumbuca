defmodule DesafioCliCumbucaTest do
  use ExUnit.Case
  doctest DesafioCliCumbuca

  test "to_roman converts numbers to Roman numerals" do
    assert DesafioCliCumbuca.to_roman(1) == "I"
    assert DesafioCliCumbuca.to_roman(4) == "IV"
    assert DesafioCliCumbuca.to_roman(9) == "IX"
    assert DesafioCliCumbuca.to_roman(10) == "X"
    assert DesafioCliCumbuca.to_roman(40) == "XL"
    assert DesafioCliCumbuca.to_roman(50) == "L"
    assert DesafioCliCumbuca.to_roman(90) == "XC"
    assert DesafioCliCumbuca.to_roman(100) == "C"
    assert DesafioCliCumbuca.to_roman(400) == "CD"
    assert DesafioCliCumbuca.to_roman(500) == "D"
    assert DesafioCliCumbuca.to_roman(900) == "CM"
    assert DesafioCliCumbuca.to_roman(1000) == "M"
  end

  test "enumerate_names adds Roman numerals to names" do
    names = ["Eduardo", "Maria", "Daniel", "Eduardo"]
    expected = ["Eduardo I", "Maria I", "Daniel I", "Eduardo II"]
    assert DesafioCliCumbuca.enumerate_names(names, %{}) == expected
  end
end

