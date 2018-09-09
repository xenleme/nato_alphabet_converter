require './lib/nato_alphabet_converter.rb'
require 'rspec'

RSpec.describe NatoAlphabetConverter do
  it 'convert string to nato alphabet' do
    expect(NatoAlphabetConverter.convert_to_nato('jim')).to eq([
      'J as Juliet', 'I as India', 'M as Mike'
    ])
  end

  it 'convert string to nato alphabet with two or more words' do
    expect(NatoAlphabetConverter.convert_to_nato('john doe')).to eq([
      'J as Juliet', 'O as Oscar', 'H as Hotel', 'N as November', ' ',
      'D as Delta', 'O as Oscar', 'E as Echo'
    ])
  end

  it 'returns empty array if passed empty string' do
    expect(NatoAlphabetConverter.convert_to_nato(' ')).to eq([' '])
  end

  it 'returns notice if passed incorrect attributes' do
    expect(NatoAlphabetConverter.convert_to_nato('*&)$')).to eq(
      'Please enter the correct data'
    )
    expect(NatoAlphabetConverter.convert_to_nato('123456789')).to eq(
      'Please enter the correct data'
    )
  end
end
