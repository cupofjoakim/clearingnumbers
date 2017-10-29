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
    [
      {
        "name" => "RBS",
        "ranges" => [
          {
            "min" => 9090,
            "max" => 9099
          }
        ]
      },
      {
        "name" => "Kommuninvest",
        "ranges" => [
          {
            "min" => 9955,
            "max" => 9955
          }
        ]
      },
      {
        "name" => "Amfa Bank",
        "ranges" => [
          {
            "min" => 9660,
            "max" => 9669
          }
        ]
      },
      {
        "name" => "Avanza Bank",
        "ranges" => [
          {
            "min" => 9550,
            "max" => 9569
          }
        ]
      },
      {
        "name" => "Marginalen Bank",
        "ranges" => [
          {
            "min" => 9230,
            "max" => 9239
          }
        ]
      },
      {
        "name" => "Bluestep Finans",
        "ranges" => [
          {
            "min" => 9680,
            "max" => 9689
          }
        ]
      },
      {
        "name" => "Calyon Bank",
        "ranges" => [
          {
            "min" => 9080,
            "max" => 9089
          }
        ]
      },
      {
        "name" => "Citibank",
        "ranges" => [
          {
            "min" => 9040,
            "max" => 9049
          }
        ]
      },
      {
        "name" => "Danske Bank",
        "ranges" => [
          {
            "min" => 1200,
            "max" => 1399
          },
          {
            "min" => 2400,
            "max" => 2499
          },
          {
            "min" => 9180,
            "max" => 9189
          }
        ]
      },
      {
        "name" => "DNB Bank",
        "ranges" => [
          {
            "min" => 9190,
            "max" => 9199
          },
          {
            "min" => 9260,
            "max" => 9269
          }
        ]
      },
      {
        "name" => "Ekobanken",
        "ranges" => [
          {
            "min" => 9700,
            "max" => 9709
          }
        ]
      },
      {
        "name" => "Folkia",
        "ranges" => [
          {
            "min" => 9690,
            "max" => 9699
          }
        ]
      },
      {
        "name" => "Forex Bank",
        "ranges" => [
          {
            "min" => 9400,
            "max" => 9449
          }
        ]
      },
      {
        "name" => "Fortis Bank",
        "ranges" => [
          {
            "min" => 9470,
            "max" => 9479
          }
        ]
      },
      {
        "name" => "GE Money Bank",
        "ranges" => [
          {
            "min" => 9460,
            "max" => 9469
          }
        ]
      },
      {
        "name" => "Handelsbanken",
        "ranges" => [
          {
            "min" => 6000,
            "max" => 6999
          }
        ]
      },
      {
        "name" => "ICA Banken",
        "ranges" => [
          {
            "min" => 9270,
            "max" => 9279
          }
        ]
      },
      {
        "name" => "IKANO Bank",
        "ranges" => [
          {
            "min" => 9170,
            "max" => 9179
          }
        ]
      },
      {
        "name" => "JAK Medlemsbank",
        "ranges" => [
          {
            "min" => 9670,
            "max" => 9679
          }
        ]
      },
      {
        "name" => "Landshypotek",
        "ranges" => [
          {
            "min" => 9390,
            "max" => 9399
          }
        ]
      },
      {
        "name" => "Netfonds Bank (ub)",
        "ranges" => [
          {
            "min" => 9720,
            "max" => 9729
          }
        ]
      },
      {
        "name" => "Länsförsäkringar Bank",
        "ranges" => [
          {
            "min" => 3400,
            "max" => 3409
          },
          {
            "min" => 9020,
            "max" => 9029
          },
          {
            "min" => 9060,
            "max" => 9069
          }
        ]
      },
      {
        "name" => "MedMera Bank",
        "ranges" => [
          {
            "min" => 9650,
            "max" => 9659
          }
        ]
      },
      {
        "name" => "Nordea",
        "ranges" => [
          {
            "min" => 1100,
            "max" => 1199
          },
          {
            "min" => 1400,
            "max" => 2099
          },
          {
            "min" => 3000,
            "max" => 3299
          },
          {
            "min" => 3300,
            "max" => 3300
          },
          {
            "min" => 3782,
            "max" => 3782
          },
          {
            "min" => 3301,
            "max" => 3399
          },
          {
            "min" => 3410,
            "max" => 3781
          },
          {
            "min" => 3783,
            "max" => 4999
          },
          {
            "min" => 9500,
            "max" => 9549
          },
          {
            "min" => 9960,
            "max" => 9969
          }
        ]
      },
      {
        "name" => "Nordnet Bank",
        "ranges" => [
          {
            "min" => 9100,
            "max" => 9109
          }
        ]
      },
      {
        "name" => "Nasdaq-OMX",
        "ranges" => [
          {
            "min" => 9870,
            "max" => 9879
          }
        ]
      },
      {
        "name" => "Riksgälden",
        "ranges" => [
          {
            "min" => 9880,
            "max" => 9899
          }
        ]
      },
      {
        "name" => "Teller Branch Norway",
        "ranges" => [
          {
            "min" => 9951,
            "max" => 9951
          }
        ]
      },
      {
        "name" => "Bankernas Automatbolag",
        "ranges" => [
          {
            "min" => 9952,
            "max" => 9952
          }
        ]
      },
      {
        "name" => "Teller Branch Sweden",
        "ranges" => [
          {
            "min" => 9953,
            "max" => 9953
          }
        ]
      },
      {
        "name" => "Kortaccept Nordic",
        "ranges" => [
          {
            "min" => 9954,
            "max" => 9954
          }
        ]
      },
      {
        "name" => "Exchange Finans Europe",
        "ranges" => [
          {
            "min" => 9580,
            "max" => 9589
          }
        ]
      },
      {
        "name" => "Erik Penser Bankaktiebolag",
        "ranges" => [
          {
            "min" => 9590,
            "max" => 9599
          }
        ]
      },
      {
        "name" => "Volvofinans Bank",
        "ranges" => [
          {
            "min" => 9610,
            "max" => 9619
          }
        ]
      },
      {
        "name" => "Bank of China (Luxembourg)",
        "ranges" => [
          {
            "min" => 9620,
            "max" => 9629
          }
        ]
      },
      {
        "name" => "Lån & Spar Bank",
        "ranges" => [
          {
            "min" => 9630,
            "max" => 9639
          }
        ]
      },
      {
        "name" => "Nordax Finans",
        "ranges" => [
          {
            "min" => 9640,
            "max" => 9649
          }
        ]
      },
      {
        "name" => "Pareto Öhman",
        "ranges" => [
          {
            "min" => 9380,
            "max" => 9389
          }
        ]
      },
      {
        "name" => "Privatgirot",
        "ranges" => [
          {
            "min" => 9860,
            "max" => 9869
          }
        ]
      },
      {
        "name" => "Resurs Bank",
        "ranges" => [
          {
            "min" => 9280,
            "max" => 9289
          }
        ]
      },
      {
        "name" => "SalusAnsvar Bank",
        "ranges" => [
          {
            "min" => 9231,
            "max" => 9239
          }
        ]
      },
      {
        "name" => "SBAB Bank",
        "ranges" => [
          {
            "min" => 9250,
            "max" => 9259
          }
        ]
      },
      {
        "name" => "SEB",
        "ranges" => [
          {
            "min" => 5000,
            "max" => 5999
          },
          {
            "min" => 9120,
            "max" => 9124
          },
          {
            "min" => 9130,
            "max" => 9149
          }
        ]
      },
      {
        "name" => "Skandiabanken",
        "ranges" => [
          {
            "min" => 9150,
            "max" => 9169
          }
        ]
      },
      {
        "name" => "Sparbanken Syd",
        "ranges" => [
          {
            "min" => 9570,
            "max" => 9579
          }
        ]
      },
      {
        "name" => "Sveriges Riksbank",
        "ranges" => [
          {
            "min" => 1000,
            "max" => 1099
          }
        ]
      },
      {
        "name" => "Swedbank",
        "ranges" => [
          {
            "min" => 7000,
            "max" => 8999
          },
          {
            "min" => 9300,
            "max" => 9349
          },
          {
            "min" => "8305-5",
            "max" => "8305-5"
          },
          {
            "min" => "8383-2",
            "max" => "8383-2"
          },
          {
            "min" => "8006-9",
            "max" => "8006-9"
          },
          {
            "min" => "8018-4",
            "max" => "8018-4"
          },
          {
            "min" => "8021-8",
            "max" => "8021-8"
          },
          {
            "min" => "8024-2",
            "max" => "8024-2"
          },
          {
            "min" => "8030-9",
            "max" => "8030-9"
          },
          {
            "min" => "8032-5",
            "max" => "8032-5"
          },
          {
            "min" => "8050-7",
            "max" => "8050-7"
          },
          {
            "min" => "8059-8",
            "max" => "8059-8"
          },
          {
            "min" => "8060-6",
            "max" => "8060-6"
          },
          {
            "min" => "8077-0",
            "max" => "8077-0"
          },
          {
            "min" => "8079-6",
            "max" => "8079-6"
          },
          {
            "min" => "8103-4",
            "max" => "8103-4"
          },
          {
            "min" => "8105-9",
            "max" => "8105-9"
          },
          {
            "min" => "8114-1",
            "max" => "8114-1"
          },
          {
            "min" => "8129-9",
            "max" => "8129-9"
          },
          {
            "min" => "8138-0",
            "max" => "8138-0"
          },
          {
            "min" => "8143-0",
            "max" => "8143-0"
          },
          {
            "min" => "8147-1",
            "max" => "8147-1"
          },
          {
            "min" => "8150-5",
            "max" => "8150-5"
          },
          {
            "min" => "8153-9",
            "max" => "8153-9"
          },
          {
            "min" => "8156-2",
            "max" => "8156-2"
          },
          {
            "min" => "8166-1",
            "max" => "8166-1"
          },
          {
            "min" => "8169-5",
            "max" => "8169-5"
          },
          {
            "min" => "8177-7",
            "max" => "8177-7"
          },
          {
            "min" => "8182-8",
            "max" => "8182-8"
          },
          {
            "min" => "8183-6",
            "max" => "8183-6"
          },
          {
            "min" => "8187-7",
            "max" => "8187-7"
          },
          {
            "min" => "8201-6",
            "max" => "8201-6"
          },
          {
            "min" => "8214-9",
            "max" => "8214-9"
          },
          {
            "min" => "8222-2",
            "max" => "8222-2"
          },
          {
            "min" => "8239-6",
            "max" => "8239-6"
          },
          {
            "min" => "8240-4",
            "max" => "8240-4"
          },
          {
            "min" => "8242-0",
            "max" => "8242-0"
          },
          {
            "min" => "8257-8",
            "max" => "8257-8"
          },
          {
            "min" => "8264-4",
            "max" => "8264-4"
          },
          {
            "min" => "8270-1",
            "max" => "8270-1"
          },
          {
            "min" => "8284-2",
            "max" => "8284-2"
          },
          {
            "min" => "8299-0",
            "max" => "8299-0"
          },
          {
            "min" => "8304-8",
            "max" => "8304-8"
          },
          {
            "min" => "8305-5",
            "max" => "8305-5"
          },
          {
            "min" => "8313-9",
            "max" => "8313-9"
          },
          {
            "min" => "8314-7",
            "max" => "8314-7"
          },
          {
            "min" => "8327-9",
            "max" => "8327-9"
          },
          {
            "min" => "8346-9",
            "max" => "8346-9"
          },
          {
            "min" => "8353-5",
            "max" => "8353-5"
          },
          {
            "min" => "8354-3",
            "max" => "8354-3"
          },
          {
            "min" => "8368-3",
            "max" => "8368-3"
          },
          {
            "min" => "8381-6",
            "max" => "8381-6"
          },
          {
            "min" => "8393-1",
            "max" => "8393-1"
          },
          {
            "min" => "8401-2",
            "max" => "8401-2"
          },
          {
            "min" => "8403-8",
            "max" => "8403-8"
          },
          {
            "min" => "8405-3",
            "max" => "8405-3"
          },
          {
            "min" => "8417-8",
            "max" => "8417-8"
          },
          {
            "min" => "8420-2",
            "max" => "8420-2"
          },
          {
            "min" => "8431-9",
            "max" => "8431-9"
          },
          {
            "min" => "8434-3",
            "max" => "8434-3"
          },
          {
            "min" => "8440-0",
            "max" => "8440-0"
          },
          {
            "min" => "8452-5",
            "max" => "8452-5"
          },
          {
            "min" => "8464-0",
            "max" => "8464-0"
          },
          {
            "min" => "8480-6",
            "max" => "8480-6"
          },
          {
            "min" => "8860-9",
            "max" => "8860-9"
          },
          {
            "min" => "8901-1",
            "max" => "8901-1"
          }
        ]
      },
      {
        "name" => "Sparbanken Gotland",
        "ranges" => [
          {
            "min" => "8055-6",
            "max" => "8055-6"
          }
        ]
      },
      {
        "name" => "Sölvesborg-Mjällby sparbank",
        "ranges" => [
          {
            "min" => "8321-2",
            "max" => "8321-2"
          }
        ]
      },
      {
        "name" => "Markaryds sparbank",
        "ranges" => [
          {
            "min" => "8217-2",
            "max" => "8217-2"
          }
        ]
      },
      {
        "name" => "Fryksdalens sparbank",
        "ranges" => [
          {
            "min" => "8336-0",
            "max" => "8336-0"
          }
        ]
      },
      {
        "name" => "Häradssparbanken Mönsterås",
        "ranges" => [
          {
            "min" => "8331-1",
            "max" => "8331-1"
          }
        ]
      },
      {
        "name" => "Närs sparbank",
        "ranges" => [
          {
            "min" => "8250-3",
            "max" => "8250-3"
          }
        ]
      },
      {
        "name" => "Sparbanken Skaraborg",
        "ranges" => [
          {
            "min" => "8289-1",
            "max" => "8289-1"
          }
        ]
      },
      {
        "name" => "Skurups sparbank",
        "ranges" => [
          {
            "min" => "8295-8",
            "max" => "8295-8"
          }
        ]
      },
      {
        "name" => "Lekebergs sparbank",
        "ranges" => [
          {
            "min" => "8164-6",
            "max" => "8164-6"
          }
        ]
      },
      {
        "name" => "Kinda-Ydre sparbank",
        "ranges" => [
          {
            "min" => "8158-8",
            "max" => "8158-8"
          }
        ]
      },
      {
        "name" => "VP Securities A/S",
        "ranges" => [
          {
            "min" => 9956,
            "max" => 9956
          }
        ]
      },
      {
        "name" => "Ålandsbanken",
        "ranges" => [
          {
            "min" => 2300,
            "max" => 2399
          }
        ]
      }
    ]    
  end
end
