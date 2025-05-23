require 'rails_helper'

RSpec.describe "Enemies", type: :request do
  describe "PUT /enemies" do
    context "when the enemies exists" do
      it "returns status code 200" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes

        expect(response).to have_http_status(200)
      end

      it "updates the enemy" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes

        expect(enemy.reload).to have_attributes(enemy_attributes)
      end
      
      it "returns the enemy updated" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes

        json_response = JSON.parse(response.body)
        expect(enemy.reload.as_json).to eq(json_response)
      end
      
    end

    context "when the enemies does not exists" do
      it "returns status code 404" do
        put "/enemies/0", params: attributes_for(:enemy)

        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        put "/enemies/0", params: attributes_for(:enemy)

        expect(response.body).to match(/Enemy not found/)
      end
    end
  end

  describe "DELETE /enemies" do
    context "when the enemy exists" do
      it "returns http success" do
        enemy = create(:enemy)
        delete "/enemies/#{enemy.id}"
        expect(response).to have_http_status(204)
      end

      it "destroy the record" do
        enemy = create(:enemy)
        delete "/enemies/#{enemy.id}"
        expect{enemy.reload}.to raise_error ActiveRecord::RecordNotFound
      end
    end
    
    context "when the enemy does not exists" do
      it "returns status code 404" do
        delete "/enemies/0"
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        delete "/enemies/0"
        expect(response.body).to match(/Enemy not found/)
      end
    end
  end
end
