# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161216195834) do

  create_table "administradors", force: :cascade do |t|
    t.string   "admin_run",             limit: 255
    t.integer  "admin_cant_aceptados",  limit: 4
    t.integer  "admin_cant_ban_cic",    limit: 4
    t.integer  "admin_cant_ban_taller", limit: 4
    t.integer  "usuario_id",            limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "bicicleta", force: :cascade do |t|
    t.integer  "bic_id",          limit: 4
    t.string   "bic_marca",       limit: 255
    t.string   "bic_modelo",      limit: 255
    t.string   "bic_tipo",        limit: 255
    t.integer  "bic_aro",         limit: 4
    t.integer  "bic_velocidades", limit: 4
    t.string   "bic_color_princ", limit: 255
    t.string   "bic_img_1",       limit: 255
    t.string   "bic_img_2",       limit: 255
    t.string   "bic_num_serie",   limit: 255
    t.string   "bic_estado_robo", limit: 255
    t.string   "bic_cic_run",     limit: 255
    t.string   "ciclista_id",     limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "calificacions", force: :cascade do |t|
    t.float    "cal_puntuacion", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ciclista", force: :cascade do |t|
    t.string   "cic_run",      limit: 255
    t.integer  "cic_cant_rep", limit: 4
    t.integer  "cic_cant_den", limit: 4
    t.string   "cic_fono",     limit: 255
    t.string   "cic_estado",   limit: 255
    t.integer  "usuario_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "com_nombre", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "encargado_tallers", force: :cascade do |t|
    t.string   "enc_run",    limit: 255
    t.string   "enc_rol",    limit: 255
    t.integer  "enc_tiempo", limit: 4
    t.string   "enc_estado", limit: 255
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "postulacions", force: :cascade do |t|
    t.integer  "post_tiempo_taller", limit: 4
    t.string   "post_referencia_1",  limit: 255
    t.string   "post_referencia_2",  limit: 255
    t.string   "post_estado",        limit: 255
    t.integer  "encargado_id",       limit: 4
    t.integer  "administrador_id",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "presupuestos", force: :cascade do |t|
    t.string   "prep_precio_min", limit: 255
    t.integer  "prep_precio_max", limit: 4
    t.string   "prep_comentario", limit: 255
    t.string   "prep_estado",     limit: 255
    t.integer  "taller_id",       limit: 4
    t.integer  "reparacion_id",   limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "reparacions", force: :cascade do |t|
    t.string   "rep_direccion",   limit: 255
    t.float    "rep_distancia",   limit: 24
    t.string   "rep_comentario",  limit: 255
    t.string   "rep_estado",      limit: 255
    t.date     "rep_fecha_in"
    t.date     "rep_fecha_term"
    t.integer  "bicicleta_id",    limit: 4
    t.integer  "calificacion_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tallers", force: :cascade do |t|
    t.string   "taller_nombre",        limit: 255
    t.string   "taller_patente",       limit: 255
    t.string   "taller_direccion",     limit: 255
    t.string   "taller_web_page",      limit: 255
    t.integer  "taller_cant_den",      limit: 4
    t.integer  "taller_cant_cont_den", limit: 4
    t.string   "taller_descripcion",   limit: 255
    t.float    "taller_calificacion",  limit: 24
    t.string   "taller_fono",          limit: 255
    t.string   "taller_estado",        limit: 255
    t.integer  "comuna_id",            limit: 4
    t.integer  "encargado_id",         limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "usuar_run",         limit: 255
    t.string   "usuar_ap_pat",      limit: 255
    t.string   "usuar_ap_mat",      limit: 255
    t.string   "usuar_nom_usuario", limit: 255
    t.string   "usuar_contrasegna", limit: 255
    t.string   "usuar_correo",      limit: 255
    t.text     "usuar_tipo_cod",    limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
