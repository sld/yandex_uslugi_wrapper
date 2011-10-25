require 'spec_helper'

describe "Yandex uslugi api base" do
  it "should return that referer header is equal to setted referer" do
    YandexUsluga.referer = REFERER
    YandexUsluga.headers['Referer'].should == REFERER
  end

  it "should return some generated url with the api_key" do
    pending
  end

  it "should set referer and api key and check his work in descendent class " do
    referer_site = REFERER
    api_key = API_KEY
    YandexUsluga.referer = referer_site
    YandexUsluga.api_key = api_key
    YandexUsluga.headers['Authorization'].should == YandexUsluga.api_key
    YandexUsluga.headers['Referer'].should == YandexUsluga.referer
    YandexUsluga.headers['Authorization'].should == api_key
    YandexUsluga.headers['Referer'].should == referer_site
    Deposit.headers['Authorization'].should == YandexUsluga.api_key
  end
end

