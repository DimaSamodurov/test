require 'spec_helper'

describe 'Happy path' do
  it 'just pass' do
     expect(true).to eq true
  end
end

describe Sample do
  it { is_expected.to respond_to :hello}
  it { should respond_to :hello}
end