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

ActiveRecord::Schema.define(version: 2019_03_23_011458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bibliotecas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "jogo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jogo_id"], name: "index_bibliotecas_on_jogo_id"
    t.index ["usuario_id"], name: "index_bibliotecas_on_usuario_id"
  end

  create_table "classificacoes", force: :cascade do |t|
    t.string "nome"
    t.integer "idade_minima"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jogos", force: :cascade do |t|
    t.string "titulo"
    t.text "descricao"
    t.string "desenvolvedora"
    t.date "lancamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "classificacao_id"
    t.index ["classificacao_id"], name: "index_jogos_on_classificacao_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.date "nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bibliotecas", "jogos"
  add_foreign_key "bibliotecas", "usuarios"
  add_foreign_key "jogos", "classificacoes"
end
