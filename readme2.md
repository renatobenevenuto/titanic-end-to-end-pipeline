🚢 Titanic: Data Science & Machine Learning Pipeline
📋 Sobre o Projeto
Este projeto vai além da competição clássica do Kaggle. O objetivo foi criar um pipeline completo de Ciência de Dados, simulando um ambiente real de produção, focando em ETL (Extração e Tratamento), Storytelling com Dados e Machine Learning Explicável.

O modelo final atingiu uma acurácia de ~84% nos dados de teste, utilizando Random Forest otimizado.

📊 Visualização & Insights (EDA)
A análise exploratória revelou padrões comportamentais cruciais sobre o naufrágio.

1. Dashboard Geral
Principais Descobertas:

A regra "Mulheres e Crianças": É estatisticamente visível. Mulheres da 1ª classe tiveram quase 100% de taxa de sobrevivência, enquanto homens da 3ª classe ficaram abaixo de 15%.

O Fator Idade: O gráfico de densidade (KDE) mostra um pico claro de sobrevivência para crianças (0-5 anos), independentemente da classe.

Tamanho da Família: Famílias médias (2 a 4 pessoas) tiveram mais chances de sobreviver do que viajantes solitários ou famílias muito grandes (dificuldade de reunião durante o pânico).

🛠️ Engenharia de Atributos (Feature Engineering)
O diferencial deste modelo foi o tratamento prévio dos dados:

Extração de Títulos: Nomes como "Mr. John", "Miss. Anna" e "Master. George" foram processados para criar a feature Title. Isso ajudou o modelo a distinguir crianças do sexo masculino (Master) de adultos (Mr), algo que apenas a coluna "Sex" não faria.

Variáveis de Família: Criação de FamilySize (SibSp + Parch + 1) e IsAlone (Viajando sozinho).

Tratamento de Nulos: Imputação de idade baseada na média por Título (ex: a média de idade de uma "Miss" é diferente de uma "Mrs").

🤖 Machine Learning
Foi utilizado o algoritmo Random Forest Classifier.

Performance
Acurácia: 84%

Precision (Não Sobreviventes): 85%

Recall (Sobreviventes): 77%

O que definiu a sobrevivência?
Utilizando a técnica de Feature Importance do algoritmo, identificamos as variáveis mais pesadas na decisão:

Fare (Tarifa): Indicador direto de status socioeconômico.

Age (Idade): Prioridade de resgate.

Sex & Title: Gênero e Status Social combinados.

📂 Estrutura do Repositório
data/: Arquivos CSV processados.

notebooks/: Código Python completo (Jupyter/Colab).

images/: Gráficos gerados para análise.
