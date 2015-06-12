class ParcelController < ApplicationController

  def create
    @parcel = Parcel.new

    @parcel.to = params[:to]
    @parcel.from = params[:from]
    @parcel.message = params[:message]
    @parcel.fields = params[:fields]

    if @parcel.save
      RelayMailer.away(params).deliver_now
      redirect_to params[:redirect][:success]
    else
      redirect_to params[:redirect][:failure]
    end
  end

end

