# frozen_string_literal: true

require 'http'
require 'nokogiri'

class Api::V1::TranslateController < Api::BaseController
  before_action -> { doorkeeper_authorize! :read }
  before_action :require_user!

  respond_to :text, layout: false

  def index
    puts '*****************************************'
    p params
    puts '*****************************************'

    res = HTTP.headers('Ocp-Apim-Subscription-Key': ENV['AZURE_TRANSLATE_SUBSUCRIBE_KEY'])
      .get("https://api.microsofttranslator.com/V2/Http.svc/Translate", params: {text: params[:text], to: params[:to]})

    render json: { text: Nokogiri::XML.parse(res.to_s).text }
  end

  private

  def requested_status
    Status.find(params[:status_id])
  end
end
