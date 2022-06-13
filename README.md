# AluraDevOpsChallenge
Repositório para o DevOps Challenge da Alura em https://www.alura.com.br/challenges/devops?host=https://cursos.alura.com.br

# O que é isso?
É um desafio em que foi proposto que transformássemos em conteiner uma aplicação Django fornecida por eles. Dessa forma, foi necessário passar por diversos pontos como Linux, Redes e Docker. 

# Como iniciar?
Através do comando <code> docker run -d -p 8000:8000 pedroamoreira/alurachallenge:semana1 </code>

# O que o Dockerfile faz?
Ele foi criado para empacotar a aplicação Django, instalar seus requerimentos através do *pip* e por último ele também realiza as configurações necessárias do Django como a migração para o sqlite3 funcionar e a criação do super usuário que também é feita através dele.

# Super usuário
O login e senha são admin pois foram passados dessa forma no Dockerfile através do ARG, uma forma inteligente de passar variáveis efêmeras como essas da configuração.

