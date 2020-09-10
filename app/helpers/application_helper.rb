module ApplicationHelper
  include TestHelper

  def send_response format, data
    present data, with: format, success: true
  end
end
