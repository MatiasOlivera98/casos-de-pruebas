@https://www.mercadolibre.com.ar/
@web @Windows
Feature: Inicio de sesion
    Scenario Outline: Inicio de sesion exitoso con datos validos 
        Given el usuario se encuentra en la página de inicio de sesión
        When  el usuario carga sus datos validos 
        And presiona el boton *iniciar*
        Then se iniciara la sesion exitosamente 
    Examples:
    
    |user|password|Resultado esperado|
    |user1|password1|sesion iniciada|

    Scenario Outline: Inicio de sesion con datos no validos 
        Given el usuario se encuentra en la pagina de inicio de sesion
        And rellenar los campos de *usuario* y *contraseña* 
        When  el usuario ingresa crendenciales invalidas
        And presiona el click izquierdo del mouse en el boton *iniciar*
        Then el sistema mostrar un mensaje de error indicando que la credenciales son incorrectas
    Examples: 

    |user|password|Resultado esperado|
    |user1|password1|datos incorrectos|