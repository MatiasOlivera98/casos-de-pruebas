@https://demo.guru99.com/test/newtours/register.php
@web @Windows
@testlogin
@pruebapositiva

Feature: Devolución de productos

    Background: Cliente quiere realizar la devolucion del producto comprado, para poder recibir un reembolso o reemplazo 
    ya que no esta satisfecho con el producto aquirido.

    Scenario Outline: Devolución de producto existosa

        Given que el cliente se encuentra en la pagina de devolucion de productos
        And tengo un producto en mi carrito de compras 
        And selecciono la razón de la devolucion 
        When el cliente hace click en el boton "Devolver producto"
        Then deberia ver un mensaje de confirmacion de devolucion 
        And la cuenta deberia ser reembolsada   

    Examples:

        |   browser    |
        |   Chorme     | 
        |   Firefox    |
        |   Opera GX   |
        |   Edge       | 

    Examples:

        |cliente||producto|razon devolucion|reembolso|
        |user1|prenda|talle incorrectos|dinero||

@pruebanegativa

    Scenario Outline: Devolucion de productos con errores 
        
        Given que estoy en la página de devolucion de productos
        And tengo un producto en mi carrito de compras, pero no selecciono la razón de la devolucion
        When hago click en el boton "Devolver producto"
        Then se genera un mensaje de error
        And la devolucion no deberia ser procesada 
    
    Examples:
        
        |   browser    |
        |   Chorme     |
        |   Firefox    |
        |   Opera GX   |
        |   Edge       |

    Examples:

        |cliente|producto|error razon devolucion|
        |user1|prenda|seleccion opcion| 