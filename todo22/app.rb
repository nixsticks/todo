require 'bundler'
Bundler.require

module Calendar
  class App < Sinatra::Application
    set :today, Time.now.strftime("%m/%d")
    set :holidays, {
      :birthday => "07/31",
      :christmas => "12/25",
      :new_year => "01/01",
      :halloween => "10/31"
    }

    get '/birthday' do
      birthday = Time.new(1987, 12, 18).strftime("%m/%d")
      if birthday == settings.today
        erb :yes
      else
        erb :no
      end
    end

    get '/:event' do
      event = params[:event]
      @event = settings.holidays[event.to_sym]
      if @event
        if @event == settings.today
          erb :yes
        else
          erb :no
        end
      else
        erb :not_found
      end
    end
  end
end