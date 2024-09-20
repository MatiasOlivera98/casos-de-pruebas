@https://www.mercadolibre.com.ar/
@web @Windows
Feature: Gestionar carrito de compras
    Background: Dado que el usuario ya esta registrado y esta en la pagina principal
    Scenario Outline: Agregar productos al carrito
    Cuando el usuario agrega el producto "zapatillas" y agrega "campera"
        Given el usuario seleccione los productos (indumentaria)
        When el usuario presiona el boton "agregar al carrito"
        Then el sistema emitira un mensaje al usuario que dicte lo siguiente "productos agregados"
    Examples:
    
    |producto|resultado esperado|
    |zapatillas y campera|productos agregados|    

    Scenario Outline: Producto agotado
    Cuando el usuario desea agregar el producto "campera" nose encuentra disponible
        Given el usuario selecciono el producto "campera"
        When el usuario presiona el boton "agregar producto"
        Then el sistema emite un mensaje "producto no disponible"
    Examples:

    |producto|resultado esperado|
    |campera|producto no disponible|