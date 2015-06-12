class RelayMailer < ApplicationMailer

  def mail(params)
    @params = params
    mail(
      to: @params["to"],
      subject: 'a ponyexpress relayed message'
    )
  end

end
