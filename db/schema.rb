# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_25_185046) do
  create_table "onibuses", force: :cascade do |t|
    t.string "placa"
    t.string "chassi"
    t.string "modelo"
    t.integer "capacidade"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paradas", force: :cascade do |t|
    t.integer "numero"
    t.string "nome"
    t.string "rua"
    t.string "bairro"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rota", force: :cascade do |t|
    t.string "nome"
    t.float "valor"
    t.float "distancia"
    t.float "duracao"
    t.string "inicio"
    t.string "fim"
    t.time "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
