def json
  result = JSON.parse(response.body)
  result.is_a?(Array) ? result : HashWithIndifferentAccess.new(result)
end

def token(user)
  post '/users/sign_in', params: { user: { email: user.email, password: user.password } }, as: :json
  response.header['Authorization']
end

def header_params(args = {})
  {
    Authorization: args[:token],
    Accept: 'Application/json',
    HTTP_ACCEPT_LANGUAGE: args[:locale] || 'en',
    HTTP_X_SITE_ID: 'www.example.com'
  }
end