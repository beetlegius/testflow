module Exceptions
  extend ActiveSupport::Concern

  included do

    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  end

  private

  def record_invalid(e)
    render :form
  end

end
