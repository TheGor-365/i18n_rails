class WellcomeController < ApplicationController
  def index
    # debugger
    @xss = '<script>alert("hi")</script>'
  end
end
