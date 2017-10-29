require 'yaml'

class ClearingNumbers
  def self.get_bank_name_from_clearing(clearing_number)
    banks.each do |bank|
      bank["ranges"].each do |range|
        min = range["min"].to_s
        max = range["max"].to_s

        if min === clearing_number.to_s || max === clearing_number.to_s || (clearing_number.to_i > range["min"].to_i && clearing_number.to_i < range["max"].to_i)
          return bank["name"]
        end
      end
    end

    nil
  end

  def self.bank_names
    banks.map { |bank_object| bank_object["name"] }
  end

  def self.clearing_numbers_for_bank(bank_name)
    bank_arr = banks.select { |bank| bank["name"] == bank_name }
    bank_arr.any? ? bank_arr.first["ranges"] : []
  end

  def self.banks
    YAML.load_file "lib/banks.yml"
  end
end