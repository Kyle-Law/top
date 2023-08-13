require 'bundler/setup'
Bundler.require(:default)

require 'minitest/autorun'
require_relative '../lib/caesar_cipher'

class CaesarCipherTest < Minitest::Test
  def test_shift_by_five
    assert_equal "Bmfy f xywnsl!", caesar_cipher("What a string!", 5)
  end

  def test_shift_by_zero
    assert_equal "What a string!", caesar_cipher("What a string!", 0)
  end

  def test_wrap_from_z_to_a
    assert_equal "Abcde fghijk!", caesar_cipher("Zabcd efghij!", 1)
  end

  def test_maintains_case
    assert_equal "Aa Bb Cc!", caesar_cipher("Zz Aa Bb!", 1)
  end

  def test_non_alpha_characters
    assert_equal "12345 !@#$%", caesar_cipher("12345 !@#$%", 5)
  end
end

