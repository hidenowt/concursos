## Iniciar um projeto Rails sem ORM, JavaScript e Tests
Para iniciar um projeto rails onde se quer utilizar alguma outra gem de ORM e outra biblioteca de JavaScript e um outro framework de testes, basta digitar:
	$ rails new concursos -OJT

## Instalar o jquery-rails
Como instalar o jquery em um projeto rails, usando a [gem jquery-rails](https://github.com/rails/jquery-ujs) para instalação automatica

GemFile:
	# Gemfile
	gem 'jquery-rails'

Linha de comando:
	$ bundle install
	$ rails generate jquery:install

## Instalar o MongoID
[MongoID](http://mongoid.org/docs/installation/), Tutorial usando o MongoID no [RailsCast](http://railscasts.com/episodes/238-mongoid) e no [ASCIIcasts](http://pt.asciicasts.com/episodes/238-mongoid)

GemFile:
	# Gemfile
	gem "mongoid", "2.0.0.rc.6"
	gem "mongo_ext"
	gem "bson_ext", "~> 1.2"

Linha de comando:
	$ bundle install
	$ rails generate mongoid:config

É necessário alterar se você quiser usar os famosos generators do Rails 3, no config/application.rb:
	config.generators do |g|
		g.orm                 :mongoid
		g.test_framework      :rspec, :fixture => false, :views => false
	end

## Instalar o RSpec
[RSpec](http://rspec.info/)

GemFile:
	# Gemfile
	gem 'rspec'
	gem 'rspec-rails'

Linha de comando:
	$ bundle install
	$ rails g rspec:install

## Instalar Cucumber com Capybara
[cucumber](http://cukes.info/) [capybara](https://github.com/jnicklas/capybara)
GemFile:
	# Gemfile
	gem 'capybara'
	gem 'cucumber'
	gem 'database_cleaner'
	gem 'cucumber-rails'
	gem 'launchy'
	gem 'factory_girl_rails'

Linha de comando:
	$ bundle install
	$ rails g cucumber:install --capybara --rspec

## Configurações
Criar o arquivo cucumber.yml na raiz do projeto.
	# colocar para deixar a formatação legal do cucumber
	# se quiser gerar um arquivo html das features do cucumber só digitar:
	# $ cucumber --format html --out cucumber.html
	default: --format pretty

Modificações no arquivo spec_helper.rb
Comentar as linhas:
	config.fixture_path = "#{::Rails.root}/spec/fixtures"
	config.use_transactional_fixtures = true
Incluir essas linhas:
	require 'database_cleaner'
	config.before(:suite) do
		DatabaseCleaner.strategy = :truncation
		DatabaseCleaner.orm = "mongoid"
	end
	config.before(:each) do
		DatabaseCleaner.clean
	end

Criar pasta e arquivo do factory_girl dentro da pasta spec.
	spec > factories > factories.rb
	seu_projeto
	  |- spec
	      |- factories
	          |- factories.rb

Comentar o arquivo env.rb que fica na pasta features > support do cucumber
	require 'cucumber/rails/capybara_javascript_emulation'
	Cucumber::Rails::World.use_transactional_fixtures = true

Incluir o seguinte codigo no final do arquiv env.rb na pasta features > suporrte do cucumber
	if defined?(ActiveRecord::Base)
		begin
			require 'database_cleaner'
			DatabaseCleaner.strategy = :truncation
			DatabaseCleaner.orm = "mongoid"
			Before { DatabaseCleaner.clean }
		rescue LoadError => ignore_if_database_cleaner_not_present
		end
	end

Criar um arquivo chamado .rspec na pasta raiz do projeto, com o seguinte conteúdo 
	--colour
	--drb
	--format documentation 

Caso queira deixar já o layout já com uma formatação legal basta incluir a gem [Nifty Generators](https://github.com/ryanb/nifty-generators)
GemFile:
	# Gemfile
	gem "nifty-generators"

Linha de comando:
	$ bundle install
	$ rails g nifty:scaffold Recipe name:string index new