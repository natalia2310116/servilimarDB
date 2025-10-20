# ServiLiMarDB

ServiLiMarDB es una base de datos diseñada para gestionar el sistema de turnos y atención al cliente de la empresa Servicios LiMar.  
El sistema permite registrar usuarios, empleados, servicios, condiciones especiales, notificaciones y turnos de atención, garantizando una atención ordenada, prioritaria y eficiente.

## Contenido del repositorio

- `servilimar.DDL.sql`: Script de creación de las tablas (estructura de la base de datos).  
- `servilimardatos2.DML.sql`: Script de inserción de datos iniciales (población de tablas).  

## Estructura de la Base de Datos (DDL)

El archivo `servilimar.DDL.sql` crea las siguientes tablas y relaciones:

### 1. Ciudad
Contiene la información de las ciudades donde se encuentran los usuarios o empleados.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ciudad_id | SERIAL (PK) | Identificador único |
| nombre_ciudad | VARCHAR(100) | Nombre de la ciudad |
| codigo_postal | VARCHAR(10) | Código postal |

### 2. Condicion
Define condiciones especiales que pueden tener los usuarios (embarazo, adulto mayor, discapacidad, etc.).

| Campo | Tipo | Descripción |
|--------|------|-------------|
| condicion_id | SERIAL (PK) | Identificador único |
| nombre | VARCHAR(100) | Nombre de la condición |
| descripcion | TEXT | Descripción detallada |

### 3. Tipo_Usuario
Clasifica los tipos de usuarios (cliente, empleado, proveedor, etc.).

| Campo | Tipo | Descripción |
|--------|------|-------------|
| tipo_usuario_id | SERIAL (PK) | Identificador único |
| nombre | VARCHAR(50) | Tipo de usuario |

### 4. Usuario
Registra la información básica de los usuarios y su tipo.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| usuario_id | SERIAL (PK) | Identificador único |
| nombre | VARCHAR(100) | Nombre del usuario |
| apellido | VARCHAR(100) | Apellido del usuario |
| tipo_usuario_id | INT (FK) | Relación con Tipo_Usuario |
| ciudad_id | INT (FK) | Relación con Ciudad |

### 5. Usuario_Condicion
Relación muchos a muchos entre usuarios y condiciones especiales.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| usuario_id | INT (FK) | Relación con Usuario |
| condicion_id | INT (FK) | Relación con Condicion |

### 6. Servicio
Define los servicios que ofrece la entidad.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| servicio_id | SERIAL (PK) | Identificador único |
| nombre | VARCHAR(100) | Nombre del servicio |
| descripcion | TEXT | Descripción del servicio |
| estado | VARCHAR(20) | Estado del servicio (Activo/Inactivo) |

### 7. Empleado
Asocia un usuario con su cargo y departamento.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| empleado_id | SERIAL (PK) | Identificador único |
| usuario_id | INT (FK) | Relación con Usuario |
| cargo | VARCHAR(100) | Cargo del empleado |
| departamento | VARCHAR(100) | Departamento al que pertenece |

### 8. Turno
Registra los turnos asignados a los usuarios y empleados.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| turno_id | SERIAL (PK) | Identificador único |
| usuario_id | INT (FK) | Usuario que solicita el servicio |
| servicio_id | INT (FK) | Servicio solicitado |
| empleado_id | INT (FK) | Empleado asignado |
| fecha | DATE | Fecha del turno |
| hora_inicio | TIME | Hora de inicio |
| hora_fin | TIME | Hora de finalización |
| estado | VARCHAR(20) | Estado del turno (Pendiente/Atendido) |
| nombre_servicio | VARCHAR(100) | Nombre del servicio asociado |

### 9. Medio_Notificacion
Define los diferentes medios por los cuales se puede notificar a los usuarios.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| medio_id | SERIAL (PK) | Identificador único |
| nombre | VARCHAR(50) | Medio de notificación (SMS, correo, etc.) |

### 10. Notificacion
Registra los mensajes enviados a los usuarios sobre sus turnos.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| notificacion_id | SERIAL (PK) | Identificador único |
| usuario_id | INT (FK) | Usuario que recibe la notificación |
| medio_id | INT (FK) | Medio utilizado |
| mensaje | TEXT | Contenido del mensaje |
| fecha_envio | TIMESTAMP | Fecha y hora de envío |
| estado | VARCHAR(20) | Estado del mensaje (Enviado, Pendiente, Leído) |

## Población de Datos (DML)

El archivo `servilimardatos2.DML.sql` inserta información de ejemplo en todas las tablas:

- Ciudades: 10 registros principales (Cali, Bogotá, Medellín, etc.)
- Condiciones: 10 tipos de condiciones especiales.
- Tipos de usuario: Cliente, Empleado, Proveedor, Administrador, etc.
- Usuarios: 10 usuarios con diferentes tipos y ciudades.
- Usuarios con condiciones: Relación de cada usuario con una condición especial.
- Servicios: 10 servicios activos ofrecidos por la empresa.
- Empleados: Asignación de cargos y departamentos a usuarios empleados.
- Turnos: Ejemplo de 10 turnos generados con diferentes estados y horarios.
- Medios de notificación: SMS, correo electrónico, WhatsApp, etc.
- Notificaciones: Mensajes enviados a los usuarios sobre sus turnos.

## Requisitos

- Motor de base de datos: PostgreSQL 13 o superior  
- Modo de ejecución:
  1. Ejecutar primero el script `servilimar.DDL.sql`
  2. Luego ejecutar el script `servilimardatos2.DML.sql`

     
## Autor

Yoselin Natalia Cardona Serna  
Proyecto académico — Sistema de Turnos "Servicios LiMar"  
Versión: 1.0 – Octubre 2025


