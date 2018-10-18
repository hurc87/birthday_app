require 'sinatra/base'
require 'Date'

class Birthday_app < Sinatra::Base

get '/' do
  erb(:index)
end

get '/countdown' do
  day = params[:day]
  month = params[:month]
  year = params[:year]
  dayi = day.to_i
  monthi = month.to_i
  yeari = year.to_i
  p day
  p month
  p year
  today = Date.today
  birthday = Date.new(yeari, monthi, dayi)
  time_until = birthday - today
  p time_until.to_i
  @days = time_until.to_i.to_s


  # @date == Date.today
  if time_until.to_i == 0
    erb :birthday
  elsif time_until.to_i == 1
    erb :countdown_1
  else
    erb :countdown
  end
end

# get '/countdown_1' do
#   erb :countdown_1
# end

get '/birthday' do
  "This will be the landing page if your birthday is today"
  erb :birthday
end

# start the server if ruby file executed directly
run! if app_file == $0
end
