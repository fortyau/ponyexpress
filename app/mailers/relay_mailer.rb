class RelayMailer < ApplicationMailer

  def away(params)
    @params = params
    mail(to: @params[:to], subject: 'a ponyexpress relayed message')
  end

end
