class API::V1::BaseController < ApplicationController

  private

  def parse!(**options)
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params, options)
  end
end
