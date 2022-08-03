*** Settings ***
Documentation    Testes da pagina de login

Library  Browser

*** Test Cases ***
Login com sucesso
   Open Browser  https://parodify.herokuapp.com/users/sign_in
   Get Text      label[for=user_email]  contains  Email

   Fill Text       css=#user_email  paulosantos@parodify.com
   Fill Text       css=#user_password   senha123

   Click           css=input[type=submit]

   

   Sleep  5




  

  


  
  

                                                                                                  
  