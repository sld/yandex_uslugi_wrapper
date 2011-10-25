require 'spec_helper'

describe "Yandex uslugi wrapper test" do
  before( :each ) do
    @required_search_options = {:region => "Уфа", :currency => "RUB", :sum => 55555, :period => "3 years"}
    YandexUslugiWrapper.api_key = API_KEY
    YandexUslugiWrapper.referer = REFERER
  end

  it "should return the bank from the yandex_uslugi_wrapper" do
  end
end

