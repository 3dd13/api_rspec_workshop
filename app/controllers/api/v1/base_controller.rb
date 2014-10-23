class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  layout false

  rescue_from ActiveRecord::RecordNotFound, with: :four_oh_four

  def authenticate_user_by_token!
    if user = find_user_by_auth_token
      current_user = user
    else
      four_o_one
    end
  end

  private

    def current_user
      @current_user
    end

    def current_user=(user)
      @current_user = user
    end

    def four_oh_four
      render json: {}, status: :not_found
    end

    def four_two_two(message = nil)
      if message
        render json: {
          errors: {
            message: message
          }
        }, status: :unprocessable_entity
      else
        render json: {}, status: :unprocessable_entity
      end
    end

    def four_o_one(message = nil)
      error_message = {
        errors: {
          message: "Permission Denied. Authenticate failed.#{message}"
        }
      }
      render json: error_message, :status => 401
    end

    def find_user_by_auth_token
      auth_token = params[:auth_token] || request.headers["X-AUTH-TOKEN"]
      auth_token.present? && User.find_by(auth_token: auth_token)
    end
end
