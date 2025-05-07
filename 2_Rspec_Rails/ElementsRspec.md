# Elementos e funcionalidades do RSpec

O RSpec é um framework de testes para Ruby que utiliza uma sintaxe descritiva e legível. Aqui estão os principais elementos e funcionalidades:

Exemplo de uso: `bundle exec rspec spec/services/banks/api/robo/start_controller_spec.rb`

## Estrutura Básica

- `describe`: Agrupa testes relacionados a uma classe ou funcionalidade
- `context`: Agrupa testes em diferentes cenários ou condições
- `it`: Define um teste individual com uma descrição do comportamento esperado
- `expect`: Define as expectativas do teste
- `before`: Executa código antes dos testes
- `after`: Executa código após os testes

## Matchers Comuns

- `eq`: Verifica igualdade exata
- `be`: Verifica identidade do objeto
- `include`: Verifica se um elemento está contido
- `match`: Verifica se uma string corresponde a um padrão
- `be_an_instance_of`: Verifica se um objeto é uma instância de uma classe específica
- `be_kind_of`: Verifica se um objeto é do tipo ou herda de uma classe específica
- `be_truthy/be_falsey`: Verifica valores booleanos (true ou nil)
- `raise_error`: Verifica se uma exceção é lançada

## Hooks e Helpers

- `let`: Define variáveis que são calculadas sob demanda
- `subject`: Define o objeto principal do teste
- `shared_examples`: Reutiliza exemplos de teste
- `before(:each)`: Executa antes de cada teste
- `before(:all)`: Executa uma vez antes de todos os testes

## Boas Práticas

- Use descrições claras e descritivas
- Mantenha os testes independentes
- Evite testes frágeis que dependem de implementação
- Siga o padrão AAA (Arrange, Act, Assert)
- Mantenha os testes simples e focados