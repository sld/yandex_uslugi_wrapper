# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "yandex_uslugi_wrapper"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["sld7700"]
  s.date = "2011-10-25"
  s.description = "Yandex Uslugi Api Wrapper on Ruby.\n\n                     More info about Api on http://api.yandex.ru/uslugi/doc/banks-dg/concepts/about.xml"
  s.email = "sld7700@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/yandex_uslugi_wrapper.rb",
    "lib/yandex_uslugi_wrapper/autocredit.rb",
    "lib/yandex_uslugi_wrapper/bank.rb",
    "lib/yandex_uslugi_wrapper/bank_product.rb",
    "lib/yandex_uslugi_wrapper/credit.rb",
    "lib/yandex_uslugi_wrapper/deposit.rb",
    "lib/yandex_uslugi_wrapper/hash.rb",
    "lib/yandex_uslugi_wrapper/mortgage.rb",
    "lib/yandex_uslugi_wrapper/yandex_usluga.rb",
    "spec/model/yandex_uslugi_api_spec.rb",
    "spec/model/yandex_uslugi_bank_spec.rb",
    "spec/model/yandex_uslugi_wrapper_spec.rb",
    "spec/spec_helper.rb",
    "yandex_uslugi_api_wrapper.gemspec"
  ]
  s.homepage = "http://github.com/sld/yandex_uslugi"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Yandex Uslugi Api Wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, [">= 3.0.10"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
    else
      s.add_dependency(%q<activeresource>, [">= 3.0.10"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
    end
  else
    s.add_dependency(%q<activeresource>, [">= 3.0.10"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
  end
end
