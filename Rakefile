# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "yandex_uslugi_api_wrapper"
  gem.homepage = "http://github.com/sld/yandex_uslugi"
  gem.license = "MIT"
  gem.summary = "Yandex Uslugi Api Wrapper"
  gem.description = "Yandex Uslugi Api Wrapper on Ruby.\n
                     ActiveResource need to work and rspec for testing. \n
                     More info about Api on http://api.yandex.ru/uslugi/doc/banks-dg/concepts/about.xml"
  gem.email = "sld7700@gmail.com"
  gem.authors = ["Malgini"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "yandex_uslugi #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
