require 'rspec'
require 'checker'

describe Checker do
  checker = Checker.new

  describe 'differ_by_one' do
    it 'returns true when there is only one diffrent character' do
      result = checker.differ_by_one('tt','tr')

      expect(result).to eq(true)
    end

    it 'returns false when there are no diffrent characters' do
      result = checker.differ_by_one('sandiego','iegosand')

      expect(result).to eq(false)
    end

    it 'returns false when there is more than one diffrent character' do
      result = checker.differ_by_one('dog','dae')

      expect(result).to eq(false)
    end

    it 'returns true when there is one diffrent character regardless of case' do
      result = checker.differ_by_one('sandiego','IEGAsand')

      expect(result).to eq(true)
    end

    it 'returns true when there is only one diffrent character, and multiple repeated characters' do
      result = checker.differ_by_one('tttyeer','retettt')

      expect(result).to eq(true)
    end

    it 'returns false when there is more than one diffrent character, and multiple repeated characters' do
      result = checker.differ_by_one('tttyeer','rrtettt')

      expect(result).to eq(false)
    end
  end
end
