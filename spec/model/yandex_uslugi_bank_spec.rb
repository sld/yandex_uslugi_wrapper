require 'spec_helper'

describe "Yandex uslugi bank spec" do
  before( :each ) do
    @required_search_options = {:region => "Уфа", :currency => "RUB", :sum => 55555, :period => "3 years"}
    API_KEY = "put here you API KEY"
    YandexUsluga.api_key = API_KEY
    YandexUsluga.referer = "put here your referer"
  end
  
  it "should return that the yandex uslugi api header is equal to the bank header" do
    Bank.headers.should == YandexUsluga.headers
  end
  
  it "should find some banks in the region Уфа" do
    Bank.find :all, :params => {:region => "Уфа"}
  end
  
  it "should return bank with id = 99 in region Уфа" do
    Bank.find 90, :params => {:region => "Уфа"} 
  end
  
  it "should find all with redefined find function" do
     Bank.all :region => "Уфа"
  end
  
  it "should find one bank with redefined find function" do
    Bank.find 90, :region => "Уфа"
  end
  
  it "should succesfully return the deposit with id = 30470 for bank" do
    Deposit.find 30470
  end
  
  it "should search some deposits with some required params" do
    Deposit.search @required_search_options
  end
  
  it "should search some autocredits" do
    sleep(1)
    Autocredit.search @required_search_options
  end
  
  it "should search some mortgages" do
    Mortgage.search @required_search_options
  end
  
  it "should search some credits" do
    Credit.search @required_search_options
  end
  
end
