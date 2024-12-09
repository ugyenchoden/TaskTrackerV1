# frozen_string_literal: true

require 'rails_helper'

describe 'Creates  a task' do
  let_it_be(:user) { create(:user, email: 'test@test.com', password: 'Selise21') }

  context 'With valid params' do
    it 'creates a task for a given user' do
      binding.pry
      post '/tasks',  params: { task: { title: 'test', description: 'test', status: 1 } }, as: :json
      binding.pry
      expect(status).to eq(201)
      expect(json['id']).to eq(user.id)
    end
  end

  context 'With invalid params' do
    it 'throws an error with incomplete params' do
      params = {
        user: {
          email: "dummy@gmail.com",
          password: "test101"
        }
      }
      # post '/users/sign_in', params: params, as: :json
      # expect(status).to eq(401)
      # expect(json[:error]).to match("Invalid Email or password.")
    end
  end
end
