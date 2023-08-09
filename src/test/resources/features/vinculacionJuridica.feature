#language: es
#inicio


@VIN01
Esquema del escenario: Realizar logueo
Dado que estoy en la página de logueo de vinculacion juridica
Cuando ingreso los siguientes datos de usuario:
| usuario        | clave      |
| {usuario}      | {clave}    |
Entonces debería ver un mensaje de confirmacion

Ejemplos:
| usuario     | clave   |
| llcastilla  | 4015    |
| CC          | 1025    |
| CC          | 3026    |



@VIN02
Esquema del escenario: Realizar solicitud de cuenta ahorro empresarial
Dado que estoy en la página de solicitud de cuenta ahorro empresarial
Y agrego datos del cliente

| razonSocial   | numeroDocumento   |paisConstitucion| fechaConstitucion | dirOficinaPrincipal  |Ciudad |Departamento|Pais|Extension|Telefono|correoElectronico|
| {razonSocial}   | {numeroDocumento}   |{paisConstitucion}| {fechaConstitucion} | {dirOficinaPrincipal}  |{Ciudad} |{Departamento}|{Pais}|{Extension}|{Telefono}|{correoElectronico}|

Cuando ingreso los siguientes datos de usuario con api externa (Biometria)
Entonces debería ver un mensaje de confirmacion Solicitud de cuenta ahorro empresarial

Ejemplos:

| razonSocial   | numeroDocumento   |paisConstitucion| fechaConstitucion | dirOficinaPrincipal  |Ciudad |Departamento|Pais|Extension|Telefono|correoElectronico|
| {razonSocial}   | {numeroDocumento}   |{paisConstitucion}| {fechaConstitucion} | {dirOficinaPrincipal}  |{Ciudad} |{Departamento}|{Pais}|{Extension}|{Telefono}|{correoElectronico}|


@VIN03
Esquema del escenario: Realizar solicitud de cuenta ahorro empresarial (cuando contacto es diferente al representante legal)
Dado que estoy en la página de solicitud de cuenta ahorro empresarial
Y ingreso los siguientes datos de usuario con api externa (Biometria)
Cuando ingreso los siguientes datos de cliente

| razonSocial   | numeroDocumento   |paisConstitucion| fechaConstitucion | dirOficinaPrincipal  |Ciudad |Departamento|Pais|Extension|Telefono|correoElectronico|
| {razonSocial}   | {numeroDocumento}   |{paisConstitucion}| {fechaConstitucion} | {dirOficinaPrincipal}  |{Ciudad} |{Departamento}|{Pais}|{Extension}|{Telefono}|{correoElectronico}|

Y agrego informacion del representante legal
|Nombres|Apellidos|tipoDocumento|numDocumento|cargoEmpresa|Direccion|Ciudad|Departamento|Pais|Extension|Telefono|Celular|Correo|juntaDirectiva|
|{Nombres}|{Apellidos}|{tipoDocumento}|{numDocumento}|{cargoEmpresa}|{Direccion}|{Ciudad}|{Departamento}|{Pais}|{Extension}|{Telefono}|{Celular}|{Correo}|{juntaDirectiva}|

Y agrego la cantidad de la junta directiva
|tipoDocumento|numDocumento|nombreCompleto|cargoEmpresa|
|{tipoDocumento}|{numDocumento}|{nombreCompleto}|{cargoEmpresa}|

Y agrego actividad economica
|codigoCIIU|tipoSociedad|tipoActividadEconomica|ventasAnuales|totalActivos|totalPasivo|ingresosOperacionalesMensuales|ingresosNoOperacionalesMensuales|detalleIngresosNoOperacionalesMensuales|totalMensualEgresos|utilidadNeta|
|{codigoCIIU}|{tipoSociedad}|{tipoActividadEconomica}|{ventasAnuales}|{totalActivos}|{totalPasivo}|{ingresosOperacionalesMensuales}|{ingresosNoOperacionalesMensuales}|{detalleIngresosNoOperacionalesMensuales}|{totalMensualEgresos}|{utilidadNeta}|

Y agrego informacion de los fondos
|origenFondos|paisOrigenFondos|paisDestinoFondos|
|{origenFondos}|{paisOrigenFondos}|{paisDestinoFondos}|

Y agrega informacion sobre la cuenta
|tipoProducto|tipoMercado|propositoCuenta|origenFondos|origenFondosFuturos|transaccionesOcasionales|
|{tipoProducto}|{tipoMercado}|{propositoCuenta}|{origenFondos}|{origenFondosFuturos}|{transaccionesOcasionales}|

Y agrega miembros
|mensajeSWIFT|notificaionCuenta|nombreCompleto|correoElectronico|referidoGerenteComercial|
|{mensajeSWIFT}|{notificaionCuenta}|{nombreCompleto}|{correoElectronico}|{referidoGerenteComercial}|

Entonces debería ver un mensaje de confirmacion Solicitud de cuenta ahorro empresarial

Ejemplos:
| razonSocial   | numeroDocumento   |paisConstitucion| fechaConstitucion | dirOficinaPrincipal  |Ciudad |Departamento|Pais|Extension|Telefono|correoElectronico|
| {razonSocial}   | {numeroDocumento}   |{paisConstitucion}| {fechaConstitucion} | {dirOficinaPrincipal}  |{Ciudad} |{Departamento}|{Pais}|{Extension}|{Telefono}|{correoElectronico}|

Ejemplos:
|Nombres|Apellidos|tipoDocumento|numDocumento|cargoEmpresa|Direccion|Ciudad|Departamento|Pais|Extension|Telefono|Celular|Correo|juntaDirectiva|
|{Nombres}|{Apellidos}|{tipoDocumento}|{numDocumento}|{cargoEmpresa}|{Direccion}|{Ciudad}|{Departamento}|{Pais}|{Extension}|{Telefono}|{Celular}|{Correo}|{juntaDirectiva}|

Ejemplos:
|tipoDocumento|numDocumento|nombreCompleto|cargoEmpresa|
|{tipoDocumento}|{numDocumento}|{nombreCompleto}|{cargoEmpresa}|

Ejemplos:
|codigoCIIU|tipoSociedad|tipoActividadEconomica|ventasAnuales|totalActivos|totalPasivo|ingresosOperacionalesMensuales|ingresosNoOperacionalesMensuales|detalleIngresosNoOperacionalesMensuales|totalMensualEgresos|utilidadNeta|
|{codigoCIIU}|{tipoSociedad}|{tipoActividadEconomica}|{ventasAnuales}|{totalActivos}|{totalPasivo}|{ingresosOperacionalesMensuales}|{ingresosNoOperacionalesMensuales}|{detalleIngresosNoOperacionalesMensuales}|{totalMensualEgresos}|{utilidadNeta}|

Ejemplos:
|origenFondos|paisOrigenFondos|paisDestinoFondos|
|{origenFondos}|{paisOrigenFondos}|{paisDestinoFondos}|

Ejemplos:
|tipoProducto|tipoMercado|propositoCuenta|origenFondos|origenFondosFuturos|transaccionesOcasionales|
|{tipoProducto}|{tipoMercado}|{propositoCuenta}|{origenFondos}|{origenFondosFuturos}|{transaccionesOcasionales}|

Ejemplos:
|mensajeSWIFT|notificaionCuenta|nombreCompleto|correoElectronico|referidoGerenteComercial|
|{mensajeSWIFT}|{notificaionCuenta}|{nombreCompleto}|{correoElectronico}|{referidoGerenteComercial}|









