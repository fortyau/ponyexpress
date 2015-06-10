Rails.application.routes.draw do

  post 'send' => 'parcel#create'

end
