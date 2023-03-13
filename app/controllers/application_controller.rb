# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  # 全てのページに言語のパラメーターを送るための設定
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
