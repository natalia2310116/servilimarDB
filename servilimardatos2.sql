-- ========================================
-- TABLA: Ciudad
-- ========================================
INSERT INTO ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali', '760001'),
('Bogotá', '110111'),
('Medellín', '050021'),
('Barranquilla', '080001'),
('Cartagena', '130001'),
('Pereira', '660001'),
('Bucaramanga', '680001'),
('Manizales', '170001'),
('Santa Marta', '470001'),
('Popayán', '190001');

-- ========================================
-- TABLA: Condicion
-- ========================================
INSERT INTO Condicion (nombre, descripcion) VALUES
('Embarazo', 'Mujer en estado de embarazo'),
('Adulto mayor', 'Persona mayor de 60 años'),
('Silla de ruedas', 'Requiere acceso para movilidad reducida'),
('Discapacidad visual', 'Usuario con visión reducida o ceguera total'),
('Discapacidad auditiva', 'Usuario con dificultad para oír'),
('Prioridad médica', 'Atención preferente por motivos médicos'),
('Niño acompañado', 'Cliente que viene con niños pequeños'),
('Veterano', 'Atención especial por condición de veterano'),
('Lenguaje de señas', 'Requiere intérprete de lenguaje de señas'),
('Otra', 'Otra condición especial no especificada');

-- ========================================
-- TABLA: Tipo_Usuario
-- ========================================
INSERT INTO Tipo_Usuario (nombre) VALUES
('Cliente'),
('Empleado'),
('Proveedor'),
('Administrador'),
('Consultor'),
('Visitante'),
('Gerente'),
('Técnico'),
('Soporte'),
('Invitado');

-- ========================================
-- TABLA: Usuario
-- ========================================
INSERT INTO Usuario (nombre, apellido, tipo_usuario_id, ciudad_id) VALUES
('Laura', 'Gómez', 1, 1),
('Andrés', 'Pérez', 2, 2),
('María', 'López', 3, 3),
('Carlos', 'Ruiz', 1, 4),
('Diana', 'Torres', 1, 5),
('Sofía', 'Martínez', 4, 6),
('Julián', 'Ramos', 5, 7),
('Camila', 'Vargas', 1, 8),
('Felipe', 'Hernández', 2, 9),
('Valeria', 'Moreno', 1, 10);

-- ========================================
-- TABLA: Usuario_Condicion
-- ========================================
INSERT INTO Usuario_Condicion (usuario_id, condicion_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 6),
(5, 2),
(6, 7),
(7, 4),
(8, 5),
(9, 9),
(10, 10);

-- ========================================
-- TABLA: Servicio
-- ========================================
INSERT INTO Servicio (nombre, descripcion, estado) VALUES
('Despacho', 'Despacho de productos o documentos', 'Activo'),
('Entrega', 'Entrega de artículos a clientes o proveedores', 'Activo'),
('Recepción', 'Recepción de paquetes o materiales', 'Activo'),
('Atención al cliente', 'Soporte general y atención personalizada', 'Activo'),
('Consultoría', 'Asesoría técnica o administrativa', 'Activo'),
('Reclamaciones', 'Recepción y gestión de quejas o reclamos', 'Activo'),
('Mantenimiento', 'Soporte técnico o mantenimiento preventivo', 'Activo'),
('Contabilidad', 'Servicios de gestión contable', 'Activo'),
('Talento humano', 'Procesos de personal y recursos humanos', 'Activo'),
('Logística', 'Planificación de entregas y transporte', 'Activo');

-- ========================================
-- TABLA: Empleado
-- ========================================
INSERT INTO Empleado (usuario_id, cargo, departamento) VALUES
(2, 'Asesor de atención', 'Atención al cliente'),
(6, 'Gerente de servicio', 'Administración'),
(9, 'Técnico de soporte', 'Soporte técnico'),
(7, 'Consultor externo', 'Consultoría'),
(3, 'Proveedor principal', 'Abastecimiento'),
(4, 'Auxiliar de logística', 'Logística'),
(8, 'Secretaria', 'Administración'),
(1, 'Recepcionista', 'Recepción'),
(5, 'Asistente de despacho', 'Despacho'),
(10, 'Analista de recursos', 'Talento humano');

-- ========================================
-- TABLA: Turno
-- ========================================
INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado, nombre_servicio) VALUES
(1, 4, 2, '2025-10-19', '08:00', '08:30', 'Atendido', 'Atención al cliente'),
(2, 1, 5, '2025-10-19', '08:30', '09:00', 'Atendido', 'Despacho'),
(3, 2, 9, '2025-10-19', '09:00', '09:30', 'Pendiente', 'Entrega'),
(4, 3, 1, '2025-10-19', '09:30', '10:00', 'Atendido', 'Recepción'),
(5, 5, 4, '2025-10-19', '10:00', '10:30', 'Pendiente', 'Consultoría'),
(6, 7, 3, '2025-10-19', '10:30', '11:00', 'Atendido', 'Mantenimiento'),
(7, 8, 10, '2025-10-19', '11:00', '11:30', 'Pendiente', 'Contabilidad'),
(8, 9, 6, '2025-10-19', '11:30', '12:00', 'Atendido', 'Talento humano'),
(9, 10, 7, '2025-10-19', '13:00', '13:30', 'Pendiente', 'Logística'),
(10, 6, 8, '2025-10-19', '13:30', '14:00', 'Pendiente', 'Reclamaciones');

-- ========================================
-- TABLA: Medio_Notificacion
-- ========================================
INSERT INTO Medio_Notificacion (nombre) VALUES
('Correo electrónico'),
('SMS'),
('Llamada telefónica'),
('WhatsApp'),
('Telegram'),
('Notificación móvil'),
('Mensaje interno'),
('Correo físico'),
('Chat en línea'),
('Portal web');

-- ========================================
-- TABLA: Notificacion
-- ========================================
INSERT INTO Notificacion (usuario_id, medio_id, mensaje, estado) VALUES
(1, 1, 'Su turno ha sido creado con éxito.', 'Enviado'),
(2, 2, 'Recordatorio: turno programado para hoy.', 'Enviado'),
(3, 3, 'Su turno está próximo a iniciar.', 'Enviado'),
(4, 4, 'Se ha actualizado el estado de su turno.', 'Leído'),
(5, 1, 'Turno confirmado. Gracias por preferirnos.', 'Enviado'),
(6, 5, 'Encuesta de satisfacción disponible.', 'Pendiente'),
(7, 6, 'Recordatorio de cita.', 'Enviado'),
(8, 2, 'Su turno ha sido modificado.', 'Leído'),
(9, 9, 'Aviso: su turno ha sido cancelado.', 'Enviado'),
(10, 10, 'Turno reprogramado con éxito.', 'Enviado');
