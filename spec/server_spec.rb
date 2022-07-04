ENV['APP_ENV'] = 'test'

require_relative  '../server'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

RSpec.describe "My server" do
    include Rack::Test::Methods
  
    def app
      Sinatra::Application
    end

    it 'should give me back a greet is there is no parameter' do
        get '/'
        expect(last_response).to be_ok
        expect(last_response.body).to include("Ani")
    end

    it 'should give me back a greeting with my name' do
        get '/Bajaja'
        expect(last_response.body).to include("Bajaja")
    end
end