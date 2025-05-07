

## gems necessárias:

group :development, :test do
  `gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"`
  `gem "rspec-rails"`
  `gem "ffaker"`
  `gem "factory_bot_rails"`


## Testes unitários

## Testes de request (testar sempre que possível, pois é muito importante testar os endpoints)
- Criando nosso controller
    # Gera um controller chamado Users com as actions index e create
    # --no-helper: Não gera arquivos de helper
    # --no-assets: Não gera arquivos de assets (CSS/JS)
    # --no-controller-specs: Não gera specs para o controller
    # --no-view-specs: Não gera specs para as views
    # --skip-routes: Não adiciona rotas automaticamente no routes.rb
    - $ rails g controller users index create --no-helper --no-assets --no-controller-specs --no-view-specs --skip-routes
    - Criar rota no `routes.rb`
        - resources :users, only: [:index, :create]


- Criando Weapons
    - $ rails g controller weapons index create delete show --no-helper --no-assets --no-view-specs --skip-routes
    - Criar rota no `routes.rb`
        - resources :weapons, only: [:index, :create, :show, :destroy]