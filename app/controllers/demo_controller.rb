class DemoController < ApplicationController
  def time
    @server_time = Time.current
    @rails_version = Rails.version
    @ruby_version = RUBY_VERSION
  end
end
