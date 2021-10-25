## Authentication
### Setup
Clone o repositório:
```
git clone https://github.com/damdrade/authentication.git
```

### Bootstrap
O [Bootstrap](https://getbootstrap.com/) foi utilizado para a criação de um layout estilizado e responsivo.

### Cadastro de usuários
O cadastro de usuários foi implementado através da utilização da gem `Devise`. As validações de Nome, Email e Senha do usuário foram feitas em dois arquivos: `models/user.rb` e `config/initializers/devise.rb`.

### Login
O usuário logado tem acesso à sua página, enquanto um usuário não logado enxerga uma tela genérica de Login.
