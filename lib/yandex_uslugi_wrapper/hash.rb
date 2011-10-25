# Evil hack для исправления ошибки с `collect!
# Ошибка возникает при вызове Bank.all, search
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

