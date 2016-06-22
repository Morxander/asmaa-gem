require 'spec_helper'

describe Asmaa do
  it 'has a version number' do
    expect(Asmaa::VERSION).not_to be nil
  end

  it 'testing get_gender' do
    expect(Asmaa.get_gender "مراد").to eq("male")
    expect(Asmaa.get_gender "سارة").to eq("female")
  end

  it 'testing is_male' do
    expect(Asmaa.is_male? "مراد").to be_truthy
  end

  it 'testing is_female' do
    expect(Asmaa.is_female? "مراد").to be_falsy
  end
end
