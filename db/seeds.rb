Administrador.create!([
  {admin_run: "999999", admin_cant_aceptados: 0, admin_cant_ban_cic: 0, admin_cant_ban_taller: 0, usuario_id: 3}
])
Bicicletum.create!([
  {bic_id: nil, bic_marca: "bicmarca", bic_modelo: "bicmodelo", bic_tipo: "M", bic_aro: 26, bic_velocidades: 8, bic_color_princ: "azul", bic_img_1: "", bic_img_2: nil, bic_num_serie: "12345", bic_estado_robo: "F", bic_cic_run: nil, ciclista_id: "1"},
  {bic_id: nil, bic_marca: "bicmarca2", bic_modelo: "bicmodelo2", bic_tipo: "C", bic_aro: 28, bic_velocidades: 10, bic_color_princ: "blanco", bic_img_1: "", bic_img_2: nil, bic_num_serie: "123456789", bic_estado_robo: "F", bic_cic_run: nil, ciclista_id: "1"},
  {bic_id: nil, bic_marca: "bicmarca3", bic_modelo: "bicmodelo3", bic_tipo: "O", bic_aro: 26, bic_velocidades: 7, bic_color_princ: "amarillo", bic_img_1: "", bic_img_2: nil, bic_num_serie: "111111", bic_estado_robo: "V", bic_cic_run: nil, ciclista_id: "1"}
])
Ciclistum.create!([
  {cic_run: "123456", cic_cant_rep: 0, cic_cant_den: 0, cic_fono: "2123456", cic_estado: "A", usuario_id: 1}
])
Comuna.create!([
  {com_nombre: "Santiago"},
  {com_nombre: "Estacion central"},
  {com_nombre: "Quinta Normal"},
  {com_nombre: "San Miguel"},
  {com_nombre: "Independencia"}
])
EncargadoTaller.create!([
  {enc_run: "123456", enc_rol: "Dueño", enc_tiempo: 8, enc_estado: "A", usuario_id: 2}
])
Reparacion.create!([
  {rep_direccion: "Calle 123123", rep_distancia: 25000.0, rep_comentario: "Rueda desinflada", rep_estado: "Espera", rep_fecha_in: "2016-12-17", rep_fecha_term: nil, bicicleta_id: 1, calificacion_id: nil},
  {rep_direccion: "Calle 12346", rep_distancia: 1000.0, rep_comentario: "Cambios no funcionan", rep_estado: "Espera", rep_fecha_in: "2016-12-18", rep_fecha_term: nil, bicicleta_id: 3, calificacion_id: nil}
])
Usuario.create!([
  {usuar_run: "123456", usuar_ap_pat: "apusuario", usuar_ap_mat: "amusuario", usuar_nom_usuario: "nomusuario", usuar_contrasegna: "123456", usuar_correo: "usuario@mail.com", usuar_tipo_cod: "C"},
  {usuar_run: "123456", usuar_ap_pat: "tallerap", usuar_ap_mat: "talleram", usuar_nom_usuario: "tallernom", usuar_contrasegna: "123456", usuar_correo: "taller@mail.com", usuar_tipo_cod: "E"},
  {usuar_run: "999999", usuar_ap_pat: "Admin", usuar_ap_mat: "Admin", usuar_nom_usuario: "Admin", usuar_contrasegna: "999999", usuar_correo: "admin@mail.com", usuar_tipo_cod: "A"}
])
