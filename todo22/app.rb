require 'bundler'
Bundler.require

module Calendar
  class App < Sinatra::Application
    get '/birthday' do
      birthday = Time.new(1987, 07, 31)
      today = Time.now
      if birthday.month == today.month && birthday.day == today.day
        erb :yes
      else
        erb :no
      end
    end
  end
end