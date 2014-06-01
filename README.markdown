# Tecno Freela
Este projeto tem cunho didático da organização/startup "tecnobest" e tem como objetivo ser um clone básico do site [We Work Remotely](https://weworkremotely.com/).

## Como contribuir como desenvolvedor

### Baixando o projeto e contribuindo no github
O projeto usa o controle de versão [GIT-SCM](http://git-scm.com) e se caso você ainda não conhece muito de GIT recomendamos que [assista esse tutorial completo](http://goo.gl/bLCO43) feito pelo [Fábio Akita](http://akitaonrails.com.br/).

- Faça o fork do projeto para sua conta do github.
- Planeje a sua feature e implemente em um feature branch, o seu feature branch deve conter ser branch com o nome da sua fuature e deve implementar os devidos testes.
- Feita a sua implementação de feature com todos os teste passando (todos testes verdinhos) envie um `Pull Request` para o projeto principal no tecnobest e aguarde o *Code Review*.

### Como fazer o *code review* e workflow de aprovação para *Pull Requests*
A metodologia de não aceitar os commits diretamente no repositório TecnoBest/teno_freela é exatamente melhorar a qualidade através do Code Review do código onde o avaliador pode observar o emprego de boas práticas e convenções ou ainda sugerir melhorias em algoritmos compatíveis com o uso comum do dia-a-dia.
Para aprovação de um *Pull Request* o avaliador deve:
- Baixar o feature branch em sua máquina e observar o diff do commit com o branch para onde o pull request deve ser *"mergeado"*.
- Rodar todos os testes e ver se passam.
- Tentar rodar a funcionalidade a que a feature se propõe.
- Fazer o merge dos dois branch em um branch intermediário e solucionar os conflitos ou ver se nada quebra.
- Se tudo ok, aprovar o pull request.
