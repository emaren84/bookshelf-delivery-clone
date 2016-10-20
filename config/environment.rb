require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/bookshelf_delivery_clone'
require_relative '../apps/api/application'
require_relative '../apps/web/application'

Hanami::Container.configure do
  mount Api::Application, at: '/api'
  mount Web::Application, at: '/'
end
