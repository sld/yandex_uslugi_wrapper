require 'spec_helper'

describe "Yandex uslugi api base" do
  it "should return that referer header is equal to rb7" do
    YandexUsluga.referer = "put here your referer"
    YandexUsluga.headers['Referer'].should == "put here your referer"
  end
  
  it "should return some generated url with the api_key" do
    pending
  end
  
  it "should set referer and api key " do
    referer_site = "http://referer.ru"
    api_key = "this is api key"
    YandexUsluga.referer = referer_site
    YandexUsluga.api_key = api_key
    YandexUsluga.headers['Authorization'].should == YandexUsluga.api_key
    YandexUsluga.headers['Referer'].should == YandexUsluga.referer
    YandexUsluga.headers['Authorization'].should == api_key
    YandexUsluga.headers['Referer'].should == referer_site
    Deposit.headers['Authorization'].should == YandexUsluga.api_key
  end
end
