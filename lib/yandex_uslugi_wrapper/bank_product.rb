
module YandexUslugiWrapper
  # Абстрактный класс который используется только в подклассах, например Autocredit, Deposit ...
  class BankProduct < YandexUsluga
    self.prefix += 'banks/'

    # Поиск по банковским продуктам - есть 4 обязательных параметра => :region(Уфа), :currency(RUB),
    # :sum(3000), :period(5 years) и множество дополнительных
    # Данный метод можно использовать только в дочерних классах. Т.е по банкам поиска нету
    def self.search( options = {} )
      require_options = [options[:region], options[:currency], options[:sum], options[:period]]
      if require_options.compact.include?(nil) || require_options.compact.empty?
        puts "Один из обязательных параметров поиска( :region, :currency. :sum, :period ) не задан"
      end
      find :all, :from => "#{prefix}#{collection_name}/search", :params => options
    end
  end
end

