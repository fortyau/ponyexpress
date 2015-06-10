class ParcelController < ApplicationController

  def create
    @parcel = Parcel.new

    @parcel.to = params[:to]
    @parcel.from = params[:from]
    @parcel.message = params[:message]
    @parcel.payload = params[:payload]

    @parcel.save


    render json: {
               parcel: @parcel,
               message: "good"
           }

  end

end

