class CreateEstudiantes < ActiveRecord::Migration[6.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.text :carrera
      t.string :carnet
      t.date :nacimiento
      t.integer :celular

      t.timestamps
    end
  end
end
