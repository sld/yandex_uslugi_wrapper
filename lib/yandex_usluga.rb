require 'active_resource'
# Класс является базовым для Яндекс Услуги
# Здесь задаются api ключ, основной url для запроса, referer
# Также реализуется headers и методы генерирующие url
class YandexUsluga < ActiveResource::Base
  API_SITE = URI::parse("http://api.uslugi.yandex.ru")
  API_PREFIX = "/1.0/"
  
  self.site = API_SITE
  self.prefix = API_PREFIX
  self.format = :xml
  
  # Задание Api key и Referer'a необходимы для работы с Яндекс Услугами
  @@api_key = ""
  @@referer = ""
   
  class << self 
    # Если headers не заданы в подклассе, то назначаем ему 
    # headers суперкласса
    def headers
      if defined?(@headers)
        @headers
      elsif superclass != Object && superclass.headers
        superclass.headers
      else
        @headers ||= {}
      end
    end  
    
    def api_key
      @@api_key
    end 
    
    def api_key=(key)
      @@api_key = key
      use_api_key
    end 
    
    def referer
      @@referer
    end
    
    def referer=(referer_site)
      @@referer = referer_site
      use_referer_site
    end
       
    # Метод генерирует url для элемента, например /banks/{id}
    # Удаляем из стандратного метода .#{format.extension}, чтобы в конце запроса не было .xml
    def element_path(id, prefix_options = {}, query_options = nil)
      prefix_options, query_options = split_options(prefix_options) if query_options.nil?  
      "#{prefix(prefix_options)}#{collection_name}/#{id}#{query_string(query_options)}"
    end
    
    # Метод генерирует url для коллекции, например /banks
    # Также удаляем .#{format.extension}
    def collection_path(prefix_options = {}, query_options = nil)
      prefix_options, query_options = split_options(prefix_options) if query_options.nil?
      "#{prefix(prefix_options)}#{collection_name}#{query_string(query_options)}"
    end
    
  end
  
  private
    def self.use_api_key
      self.headers['Authorization'] = @@api_key
    end
    
    def self.use_referer_site
      self.headers['Referer'] = @@referer
    end
end

# Evil hack для исправления ошибки с `collect!
# https://github.com/rails/rails/issues/2318
class Hash
  def collect!(&block)
    ret = []
    self.each {|key,val|
      if val.kind_of? Array
        val.collect!{|subval|
          block.call subval
        }
        ret = val
      end
    }
    return ret
  end
end
