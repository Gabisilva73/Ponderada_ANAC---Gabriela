# Ponderada_ANAC---Gabriela

&ensp; Esta ponderada consiste em um smart contract para gerenciar a idade e categoria de passageiros, considerando três grupos solicitados: adultos brasileiros, crianças e adolescentes brasileiros e estrangeiros. Cada categoria possui uma documentação específica necessária para registro, que foi sugerida e exemplificada por mim. O contrato feito permite definir e consultar a idade, cadastrar passageiros e recuperar suas informações, garantindo que apenas o administrador possa registrar novos usuários e modificar a idade.

&ensp;Os casos de testes realizados para que a ponderada pudesse ser realizada foram os seguintes:

<p align="center">
  <img src="/assets/getIdade.png">
</p>

&ensp; Este teste é para verificar se o get idade retorna a idade estabelecida no código, que no caso é 18 anos. 

<p align="center">
  <img src="/assets/setIdade.png">
</p>

&ensp; Este teste é para verificar se o set idade retorna a nova idade enviada, no caso, testei com a idade 12 e assim que apertei o get idade, ele me retornou 12.

<p align="center">
  <img src="/assets/adicionar.png">
</p>

&ensp; Este teste verifica se o cadastro de passageiros no contrato funciona corretamente. Para realizá-lo, primeiro é necessário selecionar um endereço diferente no campo "Account" do Remix, simulando um novo usuário. Em seguida, no campo da função registrarPassageiro, deve-se inserir o endereço desse passageiro e um número que representa sua categoria e após clicar no botão para registrar, o sistema armazena as informações do passageiro e, se tudo estiver correto, o cadastro será concluído com sucesso.

<p align="center">
  <img src="/assets/passageiro.png">
</p>

&ensp; Este teste é para verificar se o passageiro foi adicionado, qual é sua categoria e quais documentos ele precisa aprender.

&ensp;nesta ponderada, o chatgpt foi utilizado para entender como os testes no remix funcionam e qual seria a melhor forma de testar o código. O prompt utilizado foi "Como testar meu próprio código no remix e como passar os parâmetros que eu quero?"
