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

ActiveRecord::Schema.define(version: 20161213203925) do

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

  create_table "encargado_tallers", force: :cascade do |t|
    t.string   "enc_run",    limit: 255
    t.string   "enc_rol",    limit: 255
    t.integer  "enc_tiempo", limit: 4
    t.string   "enc_estado", limit: 255
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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
