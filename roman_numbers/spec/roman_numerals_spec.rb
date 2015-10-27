require 'spec_helper'
require_relative '../roman_numerals.rb'
describe 'roman_numerals' do
  it 'converts 1 to I' do
    expect(arabic_to_roman(1)).to eq('I')
  end

  it 'converts 5 to V' do
    expect(arabic_to_roman(5)).to eq('V')
  end

  it 'converts 3 to III' do
    expect(arabic_to_roman(3)).to eq('III')
  end

  it 'converts 4 to IV' do
    expect(arabic_to_roman(4)).to eq('IV')
  end

  it 'converts 6 to VI' do
    expect(arabic_to_roman(6)).to eq('VI')
  end

  it 'converts 10 to X' do
    expect(arabic_to_roman(10)).to eq('X')
  end

end
