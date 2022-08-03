*** Settings ***
Resource       LinkedinResource.robot
Test Setup     Acessar a página do Linkedin
Test Teardown  Fechar Navegador

*** Test Cases ***

Caso de teste 01: Efetuar Login no site Linkedin 
  
  Efetuar login 
  Conferir se texto "Paulo Santos" é exibido 

Caso de teste 02: Realizar publicação
  Efetuar login
  Iniciar Publicação
  Realizar uma publicação marcando algum contato
  Publicar
  


