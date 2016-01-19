require 'rspec'
require_relative '../bankocr.rb'

describe 'KataBankOCR' do
  let (:digit) {'   |_|  |'}
  let (:account){
  "    _  _     _  _  _  _  _ "<<
  "  | _| _||_||_ |_   ||_||_|"<<
  "  ||_  _|  | _||_|  ||_| _|"
  }
  let(:ocr) { Ocr.new() }

  it 'reads block number' do
    number = ocr.parse_digit(digit)
    expect(number).to eq(4)
  end
  it 'reads first digit' do
    puts account
    digit = ocr.read_digit(account,0)
    expect(digit).to eq('     |  |')
  end
  it 'reads second digit' do
    puts account
    digit = ocr.read_digit(account,1)
    expect(digit).to eq(' _  _||_ ')
  end
end

