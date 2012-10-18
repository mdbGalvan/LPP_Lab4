#File: circumference.rb


# Circunferencia centrada en el origen (0, 0)
class Circumference
  
  # Crea un get, set para el atributo @radius
  # Igual si hicieramos attr_writer y attr_reader
  attr_accessor :radius
  
  # Este es el método del constructor new, donde se inicializará su único atributo necesario
  def initialize( rad )
    raise unless ( rad.is_a?(Numeric) && ( rad >= 0 ) )
     # Variable de instancia
    @radius = rad
  end
  
  # Se pasará el perímetro como argumento de entrada y devolverá el radio
  def radio( perimeter )
    # Lanza un error en caso de que el perimetro no sea un nº mayor o igual que 0
    raise unless ( perimeter.is_a?(Numeric) && ( perimeter >= 0 ) )
    perimeter/(2*Math::PI)
  end
  
  def area( )
    Math::PI*(@radius**2)
  end
  
  def perimeter( )
    2*Math::PI*@radius
  end
    
end

