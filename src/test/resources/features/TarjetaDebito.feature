#language: es
#inicio
@TD01
Esquema del escenario: Realizar solicitud tarjeta debito cliente no existe
Dado que estoy en la página de registro de solicitud de tarjeta debito
Cuando ingreso los siguientes datos de usuario:
| tipoDocumento        | numeroDocumento      |
| {tipoDocumento}      | {numeroDocumento}    |
Entonces debería ver un mensaje de rechazo
|mensajeRechazo|
|{mensajeRechazo}|

Ejemplos:
| tipoDocumento | numeroDocumento   |
| CC            | 1063965842        |
| CC            | 121345687         |
| CC            | 49752698          |

Ejemplos:
|mensajeRechazo|
|Aún no eres cliente de nuestras filiales Bancolombia Puerto Rico o Panamá|
#onboarding

@TD02
Esquema del escenario: Realizar solicitud tarjeta debito cliente existente
Dado que estoy en la página de registro de solicitud de tarjeta debito
Cuando ingreso los siguientes datos de usuario:
| tipoDocumento        | numeroDocumento      |
| {tipoDocumento}      | {numeroDocumento}    |
Entonces debería ver un mensaje de confirmacion

Ejemplos:
| tipoDocumento | numeroDocumento   |
| CC            | 1063965842        |
| CC            | 121345687         |
| CC            | 49752698          |


@TD03
Esquema del escenario: Realizar registro datos personales
Dado que estoy en la página de registro de solicitud de tarjeta debito
Cuando ingreso los siguientes datos de usuario:
| Nombres         | Apellidos     |tipoDocumento         | numDocumento         | numCelular  | correoElectronico |selecionarFilial  |selecNumCuenta   |nombrePersonalizadoPlastico|
|{Nombres}        |{Apellidos}    | {tipoDocumento}      | {numeroDocumento}    |{numCelular} |{correoElectronico}|{selecionarFilial}|{selecNumCuenta}|{nombrePersonalizadoPlastico}|
Entonces debería ver un mensaje de confirmacion

Ejemplos:
|Nombres             |Apellidos       | tipoDocumento | numeroDocumento   |numCelular |correoElectronico     |selecionarFilial                           |selecNumCuenta  |nombrePersonalizadoPlastico|
|leonardo luis       |castilla garcia | CC            | 1063965842        |3045766592 |llcastila@unicesar.co |Bancolombia Puerto Rico Internacional Inc. |9054548485845   |leo castilla    |
|alejandro antonio   |castro martinez | CC            | 121345687         |3045559862 |alejoanto@gmail.com   |Bancolombia (Panamá) S.A.                  |9054487455854   |alejandro castro|
|andrea sofia        |martinez galindo| CC            | 49752698          |3058416852 |andresofi@gmail.com   |Bancolombia Puerto Rico Internacional Inc. |9051234567895   |sofia martinez  |




@TD04
Esquema del escenario: Realizar Proceso de Firma de documentos (Cuenta Puerto Rico)
Dado que estoy en la página Proceso de Firma de documentos (Cuenta Puerto Rico)
Cuando ingreso los siguientes datos de usuario:
| codigoOTP        |
|{codigoOTP}       |
Entonces debería ver un mensaje de confirmacion

Ejemplos:
| codigoOTP         |
| 548587            |
| 415626            |
| 456987            |


@TD05
Escenario: Realizar Proceso de Firma de documentos (Cuenta Puerto Rico)
Dado que estoy en la página Proceso de Firma de documentos (Cuenta Puerto Rico)
Cuando rechazo la confirmacion de la firma del documento
Entonces debería ver un mensaje de confirmacion

@TD06
Escenario: RealizarProceso de Firma de documentos (Cuenta Panamá)
Dado que estoy en la página Proceso de Firma de documentos (Cuenta Panamá)
Cuando rechazo la confirmacion de la firma del documento
Entonces debería ver un mensaje de confirmacion








