@https://demo.guru99.com/test/newtours/register.php
@web @Windows
@testlogin

Feature: Cierre de sesion fortuito 
    Background: Habiendo iniciado sesion anteriormente 
    Scenario Outline: Cierre de sesion 
        Given el usuario presionara en su foto de perfil arriba a la derecha
        And el sitema despliega una lista con opciones
        When el usuario presiona la opción *SALIR*
        Then el sistema cerrará la sesión exitosamente
    
    Examples:
            | browser  |
            |  Chorme  |
            | Firefox  |
            | Opera GX |
            |  Edge    |
   
    Examples:

    |date||resultado esperado|
    |login user||cierre de sesion|
  
    