require 'clearingnumbers'

RSpec.describe ClearingNumbers do
  it "returns an array" do
    banks = ClearingNumbers.banks
    expect(banks).to be_an(Array)
  end

  it "lists all bank names and returns valid data for them" do
    names = ClearingNumbers.bank_names
    expect(names).to be_an(Array)
    expect(names.count).to eq(59)
    names.each do |name|
      ranges = ClearingNumbers.clearing_numbers_for_bank(name)
      expect(ranges.any?).to be_truthy
      ranges.each do |range|
        expect(range.has_key?("min")).to be_truthy
        expect(range.has_key?("max")).to be_truthy
      end
    end
  end
end
