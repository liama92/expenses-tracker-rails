# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "ExpenseTypes", type: :request do


  describe "GET /expense_types" do
    before do
      FactoryBot.create(:expense_type, name: "Travel") 
      FactoryBot.create(:colour)
      get expense_types_path
    end

    it "responds 200 ok" do
      expect(response.status).to eq 200
    end

    it "displays expense types" do
      expect(response.body).to include "Travel"
    end
  end

  describe "GET /expense_types/new" do
    before do
      get new_expense_type_path
    end

    it "responds 200 ok" do
      expect(response.status).to eq 200
    end
  end

  describe "POST /expense_types" do
    context "with valid params" do
      let(:colour) { FactoryBot.create(:colour) }
      let(:expense_type_params) { 
        {
          name: "Direct Debit",
          colour: colour.id
        }
      }
    end
    context "with invalid params" do

    end
  end
end
