require '../ceasar_cipher.rb'

describe "#ceasar_cipher" do
  it "works with small positive integer shifts" do
    expect(ceasar_cipher("ceasar", 5)).to eq("hjfxfw")
  end

  it "works with big positive integer shifts" do
    expect(ceasar_cipher("ceasar", 50244)).to eq("oqmemd")
  end

  it "works with small negative integer shifts" do
    expect(ceasar_cipher("ceasar", -5)).to eq("xzvnvm")
  end

  it "works with big negative integer shifts" do
    expect(ceasar_cipher("ceasar", -50244)).to eq("qsogof")
  end

  it "works with uppercase letters" do
    expect(ceasar_cipher("CeasarCipher", 19)).to eq("VxtltkVbiaxk")
  end

  it "works with punctuation" do
    expect(ceasar_cipher("Ceasar Cipher!", 54)).to eq("Egcuct Ekrjgt!")
  end

  it "works with newline and tab characters" do
    expect(ceasar_cipher("Ceasar\n\tCipher", -103)).to eq("Dfbtbs\n\tDjqifs")
  end
end
