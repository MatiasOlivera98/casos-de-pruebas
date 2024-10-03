@https://demo.guru99.com/test/newtours/register.php
@web @Windows
@testlogin
@pruebapositiva

Feature: Inicio de sesion 

    Background: Se encuentra en @https://demo.guru99.com/test/newtours/register.php
    Scenario Outline: Inicio de sesion exitoso con datos validos 

        When uso el navegador [browser]
        Given el usuario se encuentra en la página de inicio de sesión
        When  el usuario carga sus datos validos 
        And presiona el boton *iniciar*
        Then se iniciara la sesion exitosamente 
     
    Examples:

        |   browser    |
        |   Chorme     | 
        |   Firefox    |
        |   Opera GX   |
        |   Edge       | 

    
    Examples:

    |user|password|Resultado esperado|
    |user1|password1|sesion iniciada|

@pruebanegativa

    Scenario Outline: Inicio de sesion con datos no validos 
        Given el usuario se encuentra en la pagina de inicio de sesion
        And rellenar los campos de *usuario* y *contraseña* 
        When  el usuario ingresa crendenciales invalidas
        And presiona el click izquierdo del mouse en el boton *iniciar*
        Then el sistema mostrar un mensaje de error indicando que la credenciales son incorrectas
    
    Examples:

        |   browser    |
        |   Chorme     | 
        |   Firefox    |
        |   Opera GX   | 
        |   Edge       |
    

    Examples: 

    |user|password|Resultado esperado|
    |user1|password1|datos incorrectos|