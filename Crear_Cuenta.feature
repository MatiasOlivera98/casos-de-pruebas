@https://www.mercadolibre.com.ar/
@web @Windows
Feature: Creación de cuenta 
    Scenario Outline: Creacion de cuenta exitosa 
        Given el usuario se encuentra posicionado en la vista de creacion de una cuenta
        When el usuario completa los datos solicitados (user y password)
        And presione el boton "crear"
        Then mostrar un mensaje que diga "cuenta creada"
    Examples: 

    |User|password|Resultado esperado|
    |user1|password1|Pagina principal|

    Scenario Outline: Creacion fallida con datos incorrectos
        Given el usuario se encuentra en la vista principal 
        When el usuario ingrese sus datos incorrectos (mail, personal date, user, password)
        And el usuario debera hacer click en el boton "crear"
        Then el sistema mostrar un mensaje de error indicando que los datos ingresados son incorrectos
    Examples:

    |User|password|Resultado esperado|
    |user2|password2|Mensaje de error|