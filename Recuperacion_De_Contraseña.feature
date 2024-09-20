@https://www.mercadolibre.com.ar/
@web @Windows
Feature: Restablecer contraseña  
    Background: El usuario tiene una cuenta valida  
    Scenario Outline: Recuperación de contraseña exitosa
        Given el usuario selecciona la opción de *restablecer contraseña*  
        And completa el campo con su correo electronico 
        When el usuario recibe el mail con el link para restablecer contraseña
        And el usuario completa los campos obligatorios *nueva contraseña* *confirmar contraseña*
        And ademas el usuario hace click sobre la opción *guardar contraseña*
        Then el sistema notificara al usuario con un mensaje que dice *contraseña restablecida exitosamente*

    Examples:
    |date||resultado esperado|
    |valid register||contraseña restablecida|
    |new password and confirm password||contraseña guardada|

    Scenario Outline: Recuperación de contraseña exitosa
        Given el usuario accede a la pagina de inicio de sesion 
        And hace click en el enlace *olvide mi contraseña*
        When ingresa a su direccion de correo electronico asociado a su cuenta 
        And el sistema enviara un correo electronico para cambiar la contraseña 
        And el usuario hara click en un enlace donde sera redirigido a una pagina para restablecer su contraseña
        And el sistema solicitara al usuario que ingrese un codigo de verificacion enviado a su dispositivo movil 
        Then el usuario ingresara una nueva contraseña y confirmara la misma 
        And el sistema actualiza la contraseña del usuario

    Examples: 
    |date||resultado esperado|
    |valid register||enlace de redirección|
    |correo electronico||enlace redirección|
    |dispositivo movil||codigo de verificacion|
    |new password and confirm password||contraseña confirmada|
    