require 'rails_helper'

RSpec.describe User, type: :model do
  # Testa se o nível do usuário está entre 1 e 99
  it "is invalid if the level is not between 1 and 99" do
    user = build(:user, level: FFaker::Random.rand(100..9999))
    expect(user).to_not be_valid
  end

  # Testa se o título do herói está no formato correto
  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..99)

    user = User.create(nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} - #{nickname} - ##{level}")
  end
end
