require 'rails_helper'

RSpec.describe Weapon, type: :model do
  # Testa se o nível da arma está entre 1 e 99
  it "is invalid if the level is not between 1 and 99" do
    weapon = build(:weapon, level: FFaker::Random.rand(100..9999))
    expect(weapon).to_not be_valid
  end

  # Testa se o título da arma está no formato correto
  it "returns the correct weapon title" do
    name = FFaker::Name.first_name
    level = FFaker::Random.rand(1..99)

    weapon = Weapon.create(name: name, level: level)
    expect(weapon.title).to eq("#{name} ##{level}")
  end
end
