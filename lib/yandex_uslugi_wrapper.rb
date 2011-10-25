module YandexUslugiWrapper
  dir = "yandex_uslugi_wrapper"
  require "#{dir}/yandex_usluga"
  require "#{dir}/hash"
  require "#{dir}/bank"
  require "#{dir}/bank_product"
  require "#{dir}/credit"
  require "#{dir}/deposit"
  require "#{dir}/mortgage"
  require "#{dir}/autocredit"

  def self.api_key=(key)
    YandexUsluga.api_key = key
  end

  def self.api_key
    YandexUsluga.api_key
  end

  def self.referer
    YandexUsluga.referer
  end

  def self.referer=(referer_site)
    YandexUsluga.referer = referer_site
  end

end

