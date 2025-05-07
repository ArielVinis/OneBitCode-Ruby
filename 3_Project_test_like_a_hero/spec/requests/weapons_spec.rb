require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    
    it "return name" do
      weapons = create_list(:weapon, 5)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.name)
      end
    end
    
    it "return current_power" do
      weapons = create_list(:weapon, 2)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.current_power.to_s)
      end
    end
    
    it "return title" do
      weapons = create_list(:weapon, 2)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.title)
      end
    end

    it "return description" do
      weapons = create_list(:weapon, 2)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.description)
      end
    end
  end

  # describe "POST /weapons" do
  #   context "quando os atributos são válidos" do
  #     it "cria uma arma com os atributos corretos" do
  #       weapon_attributes = FactoryBot.attributes_for(:weapon)
  #       post weapons_path, params: { weapon: weapon_attributes }
  #       expect(Weapon.last).to have_attributes(weapon_attributes)
  #       expect(response).to have_http_status(:success)
  #     end
  #   end
  # end

  # describe "DESTROY /weapons/:id" do
  #   it "returns http success" do
  #     destroy weapon_path
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /weapons/:id" do
  #   it "returns http success" do
  #     get weapon_path
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
