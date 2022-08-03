*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${URL}                     https://www.linkedin.com/
${BROWSER}                 chrome
${INPUT_USUARIO}           id=session_key
${INPUT_SENHA}             id=session_password
${INPUT_CRIAR_PUBLICACAO}  xpath=//div[@aria-placeholder="No que você está pensando?"]/p
${TEXTO_DESEJADO}          xpath=//div[text()=\"Paulo Santos\"]
${BTN_ENTRAR}              css=button[type='submit']
${BTN_COMECAR_PUBLICACAO}  xpath=//span[text()=\"Começar publicação\" ]/ancestor-or-self::button
${BTN_MARCAR_CONTATO}      xpath=//span[normalize-space()='COLOCAR NOME DO PERFIL AQUI']
${BTN_PUBLICAR}            xpath=//span[text()="Publicar"]/ancestor-or-self::button



*** Keywords ***

Acessar a página do Linkedin
  Open Browser  url=${URL}  browser=${BROWSER}
  Page Should Contain  Conheça a sua nova comunidade profissional

Efetuar login
  Input Text  ${INPUT_USUARIO}  INSERIR EMAIL AQUI
  Input Password  ${INPUT_SENHA} DIGITE A SENHA AQUI
  Click Button  ${BTN_ENTRAR}

Conferir se texto "Paulo Santos" é exibido
  Page Should Contain Element  ${TEXTO_DESEJADO} 

Fechar Navegador
  Close Browser 

Iniciar publicação
  Click Button  ${BTN_COMECAR_PUBLICACAO}
  Wait Until Element Is Visible  ${INPUT_CRIAR_PUBLICACAO}            

Realizar uma publicação marcando algum contato 
  
  Input Text  ${INPUT_CRIAR_PUBLICACAO}  Primeiro teste automatizado com Robot Framework @MARCAR CONTATO AQUI
  Wait Until Element Is Visible  ${BTN_MARCAR_CONTATO}     
  Click Element  ${BTN_MARCAR_CONTATO}  

Publicar
  Wait Until Element Is Enabled  ${BTN_PUBLICAR}    
  #Click Button  ${BTN_PUBLICAR}         
  
        
