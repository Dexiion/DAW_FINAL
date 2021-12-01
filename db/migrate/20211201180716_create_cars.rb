class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :idusuario
      t.string :marca
      t.string :modelo
      t.date :matriculacion
      t.integer :kilometros
      t.integer :cilindrada
      t.string :combustible
      t.string :localizacion
      t.integer :potencia
      t.string :color
      t.integer :puertas
      t.string :cajadecambios
      t.string :descripcion
      t.integer :precio
      t.integer :destacado

      t.timestamps
    end
  end
end
