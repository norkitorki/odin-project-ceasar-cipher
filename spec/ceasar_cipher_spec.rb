require_relative '../lib/ceasar_cipher.rb'

describe 'ceasar_cipher' do
  it 'should work with small integer shifts' do
    expect(ceasar_cipher('ceasar', 5)).to eq('hjfxfw')
  end

  it 'should work with big integer shifts' do
    expect(ceasar_cipher('ceasar', 50244)).to eq('oqmemd')
  end

  it 'should work with small negative integer shifts' do
    expect(ceasar_cipher('ceasar', -5)).to eq('xzvnvm')
  end

  it 'should work with big negative integer shifts' do
    expect(ceasar_cipher('ceasar', -50244)).to eq('qsogof')
  end

  it 'should work with uppercase letters' do
    expect(ceasar_cipher('CeasarCipher', 19)).to eq('VxtltkVbiaxk')
  end

  it 'should work with punctuation' do
    expect(ceasar_cipher('Ceasar Cipher!', 54)).to eq('Egcuct Ekrjgt!')
  end

  it 'should work with newline and tab characters' do
    expect(ceasar_cipher("Ceasar\n\tCipher", -103)).to eq("Dfbtbs\n\tDjqifs")
  end

  it 'should raise an error if passed in arguments are invalid' do
    expect { ceasar_cipher([20], '5') }.to raise_error(ArgumentError)
  end
end
