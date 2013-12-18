require 'bundler'
Bundler.require

module Calendar
  class App < Sinatra::Application
    get '/birthday' do
      birthday = Time.new(1987, 12, 18).strftime("%m/%d")
      today = Time.now.strftime("%m/%d")
      if birthday == today
        erb :yes
      else
        erb :no
      end
    end

    helpers do
      def sameday
        
      end
    end
  end
end