module YandexUslugiWrapper
  # Класс реализует доступ к спискам банков и определенному банку
  # Запрос осуществляется так:
  # Для нахождения всех банков из Уфы -- Bank.find :all, :params => {:region => "Уфа"}
  # Обязательным, при запросе Банков, является использование region
  class Bank < YandexUsluga
    # Поиск всех банков из региона
    # Bank.all :region => "Уфа"
    # Bank.all :params => { :region => "Уфа" }
    def self.all region
      unless region[:params]
        super :params => region
      else
        super
      end
    end

    # Поиск банка с определенным id
    # Bank.find 90, :region => "Уфа"
    # Bank.find 90, :params => { :region => "Уфа" }
    def self.find id, region
      unless region[:params]
        super id, :params => region
      else
        super
      end
    end
  end
end

