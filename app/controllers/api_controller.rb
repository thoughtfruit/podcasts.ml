class ApplicationController < ApplicationController

  before_filter :client_id
  before_filter :authenticate

  private
  def client_id ; @_client_id ||= params[:client_id] ; end
  def authenticate
    unless client_id.to_s.eq? $CLIENT_ID
      render json: { success: false,
                     message: 'Uh oh! Your client_id is incorrect. If you have any questions, please email miller.dain@gmail.com. We love to help!'
      }, status: 401
    end
  end

end