# frozen_string_literal: true

require 'http'
require 'nokogiri'

class Api::V1::Statuses::TranslateController < Api::BaseController
  before_action -> { doorkeeper_authorize! :read }
  before_action :require_user!

  respond_to :json

  def index
    @status = requested_status

    res = HTTP.headers('Ocp-Apim-Subscription-Key': ENV['AZURE_TRANSLATE_SUBSUCRIBE_KEY'])
      .get("https://api.microsofttranslator.com/V2/Http.svc/Translate", params: {text: @status.text, to: current_user.locale || 'ja'})

    @status.text << ' / ' + Nokogiri::XML.parse(res.to_s).text

    render json: @status, serializer: REST::StatusSerializer
  end

  private

  def requested_status
    Status.find(params[:status_id])
  end
end
