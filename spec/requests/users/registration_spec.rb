# frozen_string_literal: true

require 'rails_helper'

describe 'Registers user' do
  context 'With valid params' do
    let!(:params) {
      {
        user: {
          email: 'ss@selise.ch',
          password: 'Selise88',
          profile_attributes: {
            firstname: 'Sujit',
            lastname: 'Rai',
          }
        }
      }
    }

    it 'registers a user' do
      post '/users', params: params
      expect(status).to eq(200)
    end
  end

  context 'With invalid params' do
    it 'throws an error with incomplete params' do
      params = {
        user: {
          profile_attributes: {
            firstname: 'yogesh',
            lastname: 'mongar'
          }
        }
      }
      post '/users', params: params
      expect(status).to eq(422)
      # expect(json[:errors]).to match_array(
      #   [
      #     "Email can't be blank"
      #   ]
      # )
    end
  end
end
