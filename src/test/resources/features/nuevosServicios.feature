#language: es
#inicio


@NUS01
Escenario: Realizar logueo
Dado que estoy en la página de logueo de servicios digitales
Cuando ingreso los siguientes datos de usuario incorrectos:
| usuario        | clave      |
| {usuario}      | {clave}    |
Entonces debería ver un mensaje de rechazo

Ejemplos:
| usuario     | clave   |
| llcastilla  | 4015    |
| CC          | 1025    |
| CC          | 3026    |



Feature: Realizar solicitud de transferencia (formato digital - transferencia interna)

  @NUS02
  Escenario: Verificar historial de solicitudes
  Dado que estoy en la página de solicitud de transferencia
  Cuando ingreso al historial de solicitudes
  Entonces debería ver todas las solicitudes hechas

  Ejemplo:
  Dado que estoy en la página de solicitud de transferencia
  Cuando ingreso al historial de solicitudes
  Entonces debería ver la siguiente lista de solicitudes:
  | Fecha       | Tipo         | Estado    |
  | 2023-07-01  | Transferencia A  | Aprobada  |
  | 2023-07-02  | Transferencia B  | Pendiente |
  | 2023-07-03  | Transferencia C  | Rechazada |

  @NUS03
  Escenario: Verificar historial de solicitudes no exitoso
  Dado que estoy en la página de solicitud de transferencia
  Cuando ingreso al historial de solicitudes
  Entonces debería ver un mensaje de error

  Ejemplo:
  Dado que estoy en la página de solicitud de transferencia
  Cuando ingreso al historial de solicitudes
  Entonces debería ver el mensaje "Error al cargar el historial de solicitudes"

  @NUS04
  Escenario: Realizar Proceso de enrolamiento para Persona Natural (PN)
  Dado que estoy en la página de solicitud de transferencia
  Y selecciono el tipo de transferencia
  Y selecciono el nombre del ordenante
  Y agrego datos del cliente
  | tipoDocumento   | numeroDocumento   | Pais     | Ciudad          | Direccion          | numeroCuentaOrigen | Filial     |
  | DNI             | 123456789         | Panamá   | Ciudad de Panamá | Calle Principal 1  | 1234567890         | Filial A   |
  Y agrego datos del destinatario
  | nombreBeneficiario  | numeroCuentaDestino | tipoDocumento  | numeroDocumento | tipoMoneda | Monto    |
  | Juan Pérez          | 9876543210          | DNI            | 987654321       | USD        | 100.00   |
  Cuando ingreso los siguientes datos de usuario con api externa (Biometría)
  Entonces debería ver un mensaje de confirmación "Solicitud de transferencia exitosa"

  Ejemplo:
  Dado que estoy en la página de solicitud de transferencia
  Y selecciono el tipo de transferencia
  Y selecciono el nombre del ordenante
  Y agrego datos del cliente
  | tipoDocumento   | numeroDocumento   | Pais     | Ciudad          | Direccion          | numeroCuentaOrigen | Filial     |
  | DNI             | 987654321         | Panamá   | Ciudad de Panamá | Calle Secundaria 45 | 9876543210         | Filial B   |
  Y agrego datos del destinatario
  | nombreBeneficiario  | numeroCuentaDestino | tipoDocumento  | numeroDocumento | tipoMoneda | Monto    |
  | María Gómez         | 1234567890          | DNI            | 123456789       | PEN        | 250.00   |
  Cuando ingreso los siguientes datos de usuario con api externa (Biometría)
  Entonces debería ver el mensaje "Solicitud de transferencia exitosa para el beneficiario María Gómez"

  @NUS05
  Escenario: Mostrar mensaje de error al realizar Proceso de enrolamiento para Persona Natural (PN)
  Dado que estoy en la página de solicitud de transferencia
  Y selecciono el tipo de transferencia
  Y selecciono el nombre del ordenante
  Y agrego datos del cliente
  | tipoDocumento   | numeroDocumento   | Pais     | Ciudad          | Direccion          | numeroCuentaOrigen | Filial     |
  | DNI             | 987654321         | Panamá   | Ciudad de Panamá | Calle Secundaria 45 | 9876543210         | Filial B   |
  Y agrego datos del destinatario
  | nombreBeneficiario  | numeroCuentaDestino | tipoDocumento  | numeroDocumento | tipoMoneda | Monto    |
  | María Gómez         | 1234567890          | DNI            | 123456789       | PEN        | 250.00   |
  Cuando ingreso datos incorrectos de usuario con api externa (Biometría)
  Entonces debería ver un mensaje de error

  Ejemplo:
  Dado que estoy en la página de solicitud de transferencia
  Y selecciono el tipo de transferencia
  Y selecciono el nombre del ordenante
  Y agrego datos del cliente
  | tipoDocumento   | numeroDocumento   | Pais     | Ciudad          | Direccion          | numeroCuentaOrigen | Filial     |
  | DNI             | 987654321         | Panamá   | Ciudad de Panamá | Calle Secundaria 45 | 9876543210         | Filial B   |
  Y agrego datos del destinatario
  | nombreBeneficiario  | numeroCuentaDestino | tipoDocumento  | numeroDocumento | tipoMoneda | Monto    |
  | María Gómez         | 1234567890          | DNI            | 123456789       | PEN        | 250.00   |
  Cuando ingreso datos incorrectos de usuario con api externa (Biometría)
  Entonces debería ver el mensaje "Error al realizar la solicitud de transferencia. Por favor, verifique los datos ingresados."



  @NUS06
  Escenario: Realizar Proceso de enrolamiento PJ
  Dado que estoy en la página Proceso de enrolamiento
  Cuando ingreso los siguientes datos de usuario con api externa
  Entonces debería ver un mensaje de confirmacion de enrolamiento

  @NUS07
  Escenario: Realizar Proceso de enrolamiento PJ no exitoso
  Dado que estoy en la página Proceso de enrolamiento
  Cuando ingreso los siguientes datos de usuario con api externa
  Entonces debería ver un mensaje de error

  @NUS08
  Escenario: Realizar solicitud de transferencia (formato fisico)
  Dado que estoy en la página de solicitud
  Y Selecciono la entidad a ejecutar la operacion
  Y selecciono archivo
  Y agrego el numero de firmas con su nombre y correo electronico
  Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
  Entonces debería ver un mensaje de confirmacion Solicitud de transferencia

  @NUS09
  Escenario: Realizar solicitud de transferencia
  Dado que estoy en la página de solicitud
  Y Selecciono la entidad a ejecutar la operacion
  Y selecciono archivo
  Y agrego el numero de firmas con su nombre y correo electronico
  Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
  Entonces debería ver un mensaje de confirmacion Solicitud de transferencia

  @NUS010
  Escenario: Realizar solicitud de transferencia no exitoso
  Dado que estoy en la página de solicitud
  Y Selecciono la opcion de firmante adicional
  Y selecciono la solicitud a firmar
  Y selecciono archivo a subir de la firma
  Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
  Entonces debería ver un mensaje de error



  @NUS011
  Esquema del escenario: Realizar solicitud de transferencia (formato digital-transferencia interna)
  Dado que estoy en la página de solicitud de tranferencia
  Y selecciono el tipo de tranferencia
  Y seleccionio el nombre del ordenante
  Y agrego datos del cliente

  | tipoDocumento   | numeroDocumento   |Pais| Ciudad | Direccion  |numeroCuentaOrigen |Filial|
  | {tipoDocumento} | {numeroDocumento} |{Pais}|{Ciudad}|{Direccion}|{numeroCuentaOrigen}|{Filial}|
  Y agrego datos del destinatario

  |nombreBeneficiario|numeroCuentaDestino|tipoDocumento|numeroDocumento|tipoMoneda|Monto|
  | {nombreBeneficiario}| {numeroCuentaDestino} | {tipoDocumento} |{numeroDocumento}|{tipoMoneda}|{Monto}|

  Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
  Entonces debería ver un mensaje de confirmacion Solicitud de transferencia

  Ejemplos:

  | tipoDocumento   | numeroDocumento   |Pais| Ciudad | Direccion  |numeroCuenta |Filial|
  | {tipoDocumento} | {numeroDocumento} |{Pais}|{Ciudad}|{Direccion}|{numeroCuenta}|{Filial}|
  Ejemplos:

  |nombreBeneficiario|numeroCuentaDestino|tipoDocumento|numeroDocumento|tipoMoneda|Monto|
  | {nombreBeneficiario}| {numeroCuentaDestino} | {tipoDocumento} |{numeroDocumento}|{tipoMoneda}|{Monto}|



  @NUS012
  Esquema del escenario: Realizar solicitud de transferencia (formato digital-transferencia externa)
  Dado que estoy en la página de solicitud de tranferencia
  Y selecciono el tipo de tranferencia
  Y seleccionio el nombre del ordenante
  Y agrego datos del cliente

  | tipoDocumento   | numeroDocumento   |Pais| Ciudad | Direccion  |numeroCuenta |Filial|
  | {tipoDocumento} | {numeroDocumento} |{Pais}|{Ciudad}|{Direccion}|{numeroCuenta}|{Filial}|

  Y agrego datos del destinatario

  |nombreBeneficiario|numeroCuentaDestino|tipoDocumento|numeroDocumento|numeroCuentaDestino|tipoMoneda|Monto|
  | {nombreBeneficiario}| {numeroCuentaDestino} | {tipoDocumento} |{numeroDocumento}|{numeroCuentaDestino}|{tipoMoneda}|{Monto}|

  Y agrego numero de firmas adicionales

  |numeroFirma|nombreCompleto|Indicativo|numeroTel|correoElectronico|
  |{numeroFirma}|{nombreCompleto}|{Indicativo}|{numeroTel}|{correoElectronico}|

  Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
  Entonces debería ver un mensaje de confirmacion Solicitud de transferencia


  Ejemplos:
  | tipoDocumento   | numeroDocumento   |Pais| Ciudad | Direccion  |numeroCuenta |Filial|
  | {tipoDocumento} | {numeroDocumento} |{Pais}|{Ciudad}|{Direccion}|{numeroCuenta}|{Filial}|

  Ejemplos:

  |nombreBeneficiario|numeroCuentaDestino|tipoDocumento|numeroDocumento|numeroCuentaDestino|tipoMoneda|Monto|
  | {nombreBeneficiario}| {numeroCuentaDestino} | {tipoDocumento} |{numeroDocumento}|{numeroCuentaDestino}|{tipoMoneda}|{Monto}|

  Ejemplos:
  |numeroFirma|nombreCompleto|Indicativo|numeroTel|correoElectronico|
  |{numeroFirma}|{nombreCompleto}|{Indicativo}|{numeroTel}|{correoElectronico}|



  @NUS013
  Esquema del escenario: Realizar solicitud de frima de prenda
  Dado que estoy en la página de solicitud de tarjeta de credito
  Cuando selecciono la solicitud a firmar
  Entonces debería ver un mensaje de confirmacion Solicitud de firma de prenda





  @NUS014
  Esquema del escenario: Realizar solicitud de tarjeta de credito persona juridica
  Dado que estoy en la página de solicitud de tarjeta de credito persona juridica
  Cuando ingreso los siguientes datos de usuario
  Y selecciono el tipo de cuenta
  Y seleccionio el nombre de la empresa
  |nombreEmpresa| tipoDocumentoEmpresa   | numeroDocumentoEmpresa   |nombreRepresentanteLegal|tipoDocumento|nombreEmpresaTarjeta|correoElectronico|
  |{nombreEmpresa}| {tipoDocumentoEmpresa} | {numeroDocumentoEmpresa} |{nombreRepresentanteLegal}|{tipoDocumento}|{nombreEmpresaTarjeta}|{correoElectronico}|

  Y agrego datos del tarjetahabiente 1
  |tipoTarjetahabiente|nombreCompleto|tipoDocumento|numDocumento|nombreTarjeta|correoElectronico|
  |{tipoTarjetahabiente}|{nombreCompleto}|{tipoDocumento}|{numDocumento}|{nombreTarjeta}|{correoElectronico}|

  Y agrego direccion de envio
  |Pais|Departamento|Ciudad|Direccion|numeroCelular|
  |{Pais}|{Departamento}|{Ciudad}|{Direccion}|{numeroCelular}|

  Y agredo detalles de la prenda
  |Filial|tipoCuenta|plazoVigencia|numCuenta|tipoMoneda|nombreTitularCuenta|Indicativo|numTelefono|correoElectronico|
  |{Filial}|{tipoCuenta}|{plazoVigencia}|{numCuenta}|{tipoMoneda}|{nombreTitularCuenta}|{Indicativo}|{numTelefono}|{correoElectronico}|

  Entonces debería ver un mensaje de confirmacion Solicitud de la tarjeta


  Ejemplos:
  |nombreEmpresa| tipoDocumentoEmpresa   | numeroDocumentoEmpresa   |nombreRepresentanteLegal|tipoDocumento|nombreEmpresaTarjeta|correoElectronico|
  |{nombreEmpresa}| {tipoDocumentoEmpresa} | {numeroDocumentoEmpresa} |{nombreRepresentanteLegal}|{tipoDocumento}|{nombreEmpresaTarjeta}|{correoElectronico}|


  Ejemplos:
  |tipoTarjetahabiente|nombreCompleto|tipoDocumento|numDocumento|nombreTarjeta|correoElectronico|
  |{tipoTarjetahabiente}|{nombreCompleto}|{tipoDocumento}|{numDocumento}|{nombreTarjeta}|{correoElectronico}|

  Ejemplos:
  |Pais|Departamento|Ciudad|Direccion|numeroCelular|
  |{Pais}|{Departamento}|{Ciudad}|{Direccion}|{numeroCelular}|

  Ejemplos:
  |Filial|tipoCuenta|plazoVigencia|numCuenta|tipoMoneda|nombreTitularCuenta|Indicativo|numTelefono|correoElectronico|
  |{Filial}|{tipoCuenta}|{plazoVigencia}|{numCuenta}|{tipoMoneda}|{nombreTitularCuenta}|{Indicativo}|{numTelefono}|{correoElectronico}|


  @NUS015
  Esquema del escenario: Realizar solicitud de tarjeta de credito persona natural
  Dado que estoy en la página de solicitud de tarjeta de credito persona natural
  Cuando ingreso los siguientes datos de usuario
  Y selecciono el tipo de cuenta
  Y agrego informacion general
  |tipocuenta| tipoTarjetahabiente|
  |{tipocuenta}| {tipoTarjetahabiente} |

  Y agrego datos personales
  |nombreCompleto|tipoDocumento|numDocumento|nombreTarjeta|
  |{nombreCompleto}|{tipoDocumento}|{numDocumento}|{nombreTarjeta}|

  Y agrego direccion de envio
  |Pais|Departamento|Ciudad|Direccion|numeroCelular|
  |{Pais}|{Departamento}|{Ciudad}|{Direccion}|{numeroCelular}|

  Y agredo detalles de la prenda
  |Filial|tipoCuenta|plazoVigencia|numCuenta|tipoMoneda|nombreTitularCuenta|Indicativo|numTelefono|correoElectronico|
  |{Filial}|{tipoCuenta}|{plazoVigencia}|{numCuenta}|{tipoMoneda}|{nombreTitularCuenta}|{Indicativo}|{numTelefono}|{correoElectronico}|

  Entonces debería ver un mensaje de confirmacion Solicitud de la tarjeta


  Ejemplos:
  |tipocuenta| tipoTarjetahabiente|
  |{tipocuenta}| {tipoTarjetahabiente} |

  Ejemplos:
  |nombreCompleto|tipoDocumento|numDocumento|nombreTarjeta|
  |{nombreCompleto}|{tipoDocumento}|{numDocumento}|{nombreTarjeta}|

  Ejemplos:
  |Pais|Departamento|Ciudad|Direccion|numeroCelular|
  |{Pais}|{Departamento}|{Ciudad}|{Direccion}|{numeroCelular}||

  Ejemplos:
  |Filial|tipoCuenta|plazoVigencia|numCuenta|tipoMoneda|nombreTitularCuenta|Indicativo|numTelefono|correoElectronico|
  |{Filial}|{tipoCuenta}|{plazoVigencia}|{numCuenta}|{tipoMoneda}|{nombreTitularCuenta}|{Indicativo}|{numTelefono}|{correoElectronico}|





  @NUS016
  Esquema del escenario: Realizar solicitud de apertura de cuenta con beneficiarios
  Dado que estoy en la página de solicitud de apertura de cuenta
  Cuando ingreso los siguientes datos de usuario
  Y agrego informacion de la cuenta
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|

  Y agrego informacion beneficiarios
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|

  Y agrego beneficiarios
  |numeroBeneficiarios|nombreBeneficiario|tipoDocumento|numDocumento|fechaNacimiento|Relacion|porcAsignacion|paisResidencia|ciudadResidencia|direccionResidencia|telefonoContacto|correoElectronico|
  |{numeroBeneficiarios}|{nombreBeneficiario}|{tipoDocumento}|{numDocumento}|{fechaNacimiento}|{Relacion}|{porcAsignacion}|{paisResidencia}|{ciudadResidencia}|{direccionResidencia}|{telefonoContacto}|{correoElectronico}|

  Y agrego archivo para subir
  Y acepto las clausulas
  Y verifico biometria
  Entonces debería ver un mensaje de confirmacion Solicitud de la apertura de cuenta


  Ejemplos:
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|


  Ejemplos:
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|

  Ejemplos:
  |numeroBeneficiarios|nombreBeneficiario|tipoDocumento|numDocumento|fechaNacimiento|Relacion|porcAsignacion|paisResidencia|ciudadResidencia|direccionResidencia|telefonoContacto|correoElectronico|
  |{numeroBeneficiarios}|{nombreBeneficiario}|{tipoDocumento}|{numDocumento}|{fechaNacimiento}|{Relacion}|{porcAsignacion}|{paisResidencia}|{ciudadResidencia}|{direccionResidencia}|{telefonoContacto}|{correoElectronico}|



  @NUS017
  Esquema del escenario: Realizar solicitud de apertura de cuenta sin beneficiarios
  Dado que estoy en la página de solicitud de apertura de cuenta
  Cuando ingreso los siguientes datos de usuario
  Y agrego informacion de la cuenta
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|

  Y agrego informacion beneficiarios
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|
  Y agrego archivo para subir
  Y acepto las clausulas
  Y verifico biometria
  Entonces debería ver un mensaje de confirmacion Solicitud de la apertura de cuenta


  Ejemplos:
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|


  Ejemplos:
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|



  @NUS018
  Esquema del escenario: Realizar solicitud de apertura de DPF con beneficiarios
  Dado que estoy en la página de solicitud de apertura de DPF
  Cuando ingreso los siguientes datos de usuario
  Y agrego informacion del producto
  |tipoProducto|montoDeposito|tipoTasa|Plazo|Tasa|frecuenciaPago|nombreTitularCuenta|numCuentaUSD|montoDepositoUSD|
  |{tipoProducto}|{montoDeposito}|{tipoTasa}|{Plazo}|{Tasa}|{frecuenciaPago}|{nombreTitularCuenta}|{numCuentaUSD}|{montoDepositoUSD}|

  Y agrego instrucciones al venvimiento
  Y agrego informacion de la cuenta
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|

  Y agrego informacion beneficiarios
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|

  Y agrego beneficiarios
  |numeroBeneficiarios|nombreBeneficiario|tipoDocumento|numDocumento|fechaNacimiento|Relacion|porcAsignacion|paisResidencia|ciudadResidencia|direccionResidencia|telefonoContacto|correoElectronico|
  |{numeroBeneficiarios}|{nombreBeneficiario}|{tipoDocumento}|{numDocumento}|{fechaNacimiento}|{Relacion}|{porcAsignacion}|{paisResidencia}|{ciudadResidencia}|{direccionResidencia}|{telefonoContacto}|{correoElectronico}|

  Y agrego archivo para subir
  Y acepto las clausulas
  Y verifico biometria
  Entonces debería ver un mensaje de confirmacion Solicitud de la apertura de DPF


  Ejemplos:
  |tipoProducto|montoDeposito|tipoTasa|Plazo|Tasa|frecuenciaPago|nombreTitularCuenta|numCuentaUSD|montoDepositoUSD|
  |{tipoProducto}|{montoDeposito}|{tipoTasa}|{Plazo}|{Tasa}|{frecuenciaPago}|{nombreTitularCuenta}|{numCuentaUSD}|{montoDepositoUSD}|


  Ejemplos:
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|


  Ejemplos:
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|

  Ejemplos:
  |numeroBeneficiarios|nombreBeneficiario|tipoDocumento|numDocumento|fechaNacimiento|Relacion|porcAsignacion|paisResidencia|ciudadResidencia|direccionResidencia|telefonoContacto|correoElectronico|
  |{numeroBeneficiarios}|{nombreBeneficiario}|{tipoDocumento}|{numDocumento}|{fechaNacimiento}|{Relacion}|{porcAsignacion}|{paisResidencia}|{ciudadResidencia}|{direccionResidencia}|{telefonoContacto}|{correoElectronico}|







  @NUS019
  Esquema del escenario: Realizar solicitud de apertura de DPF sin beneficiarios
  Dado que estoy en la página de solicitud de apertura de DPF
  Cuando ingreso los siguientes datos de usuario
  Y agrego informacion del producto
  |tipoProducto|montoDeposito|tipoTasa|Plazo|Tasa|frecuenciaPago|nombreTitularCuenta|numCuentaUSD|montoDepositoUSD|
  |{tipoProducto}|{montoDeposito}|{tipoTasa}|{Plazo}|{Tasa}|{frecuenciaPago}|{nombreTitularCuenta}|{numCuentaUSD}|{montoDepositoUSD}|

  Y agrego instrucciones al venvimiento

  Y agrego informacion de la cuenta
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|

  Y agrego informacion beneficiarios
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|
  Y agrego archivo para subir
  Y acepto las clausulas
  Y verifico biometria
  Entonces debería ver un mensaje de confirmacion Solicitud de la apertura de DPF

  Ejemolos:
  |tipoProducto|montoDeposito|tipoTasa|Plazo|Tasa|frecuenciaPago|nombreTitularCuenta|numCuentaUSD|montoDepositoUSD|
  |{tipoProducto}|{montoDeposito}|{tipoTasa}|{Plazo}|{Tasa}|{frecuenciaPago}|{nombreTitularCuenta}|{numCuentaUSD}|{montoDepositoUSD}|


  Ejemplos:
  |tipoProducto| tipoMercado|depositoInicial|propositoCuenta|origenFondosRegistrar|origenFondosFuturosRegistrar|paisProvieneFondos1|paisProvieneFondos2|paisDirigenFondos|
  |{tipoProducto}| {tipoMercado} |{depositoInicial}| {propositoCuenta} |{origenFondosRegistrar}| {origenFondosFuturosRegistrar} |{paisProvieneFondos1}| {paisProvieneFondos2} |{paisDirigenFondos}|


  Ejemplos:
  |incluirBeneficiarios|
  |{incluirBeneficiarios}|
