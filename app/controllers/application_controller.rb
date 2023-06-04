class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    locale = params[:locale] || cookies[:locale] || I18n.default_locale
    # I18n.with_locale(locale, &action)
    I18n.locale = locale.to_sym
    cookies[:locale] = I18n.locale
  end

  # def set_locale
  #   locale = request.host.split('.').last
  #
  #   I18n.locale = if I18n.available_locales.include?(parsed_locale.to_sym)
  #     locale
  #   else
  #     I18n.default_locale
  #   end
  # end

  # def set_locale
  #   logger.debug(request.env['HTTP_ACCEPT_LANGUAGE'])
  #   locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  #
  #   logger.debug("LOCALE: #{locale}")
  #
  #   I18n.locale = if I18n.available_locales.include?(locale.to_sym)
  #     locale
  #   else
  #     I18n.default_locale
  #   end
  # end
end
