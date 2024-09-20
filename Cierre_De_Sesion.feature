@https://www.mercadolibre.com.ar/
@web @Windows
Feature: Cierre de sesion fortuito 
    Background: Habiendo iniciado sesion anteriormente 
    Scenario Outline: Cierre de sesion 
        Given el usuario presionara en su foto de perfil arriba a la derecha
        And el sitema despliega una lista con opciones
        When el usuario presiona la opción *SALIR*
        Then el sistema cerrará la sesión exitosamente
    Examples:
    |date||resultado esperado|
    |login user||cierre de sesion|
    