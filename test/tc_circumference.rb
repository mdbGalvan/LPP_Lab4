# File:  tc_circumference.rb
 
require "circumference"
require "test/unit"

# $ ruby -Ilib   tc_circumference.rb

class TestCircumference < Test::Unit::TestCase
 
  def setup
    @circle = Circumference.new(1)
  end
 
  def teardown
    ## Nothing really
  end
 
  def test_simple
	# assert_in_delta : Pasa si son iguales (0.5, radio de perimetro PI) bajo una tolerancia de 0.0001
    assert_in_delta(0.5, @circle.radio(Math::PI), 0.0001 )
  end
 
  def test_typecheck
	# assert_raise: Comprueba si el bloque dado lanza una excepcion.
    assert_raise( RuntimeError, "String Argument" ) { @circle.radio('a') }
	assert_raise( RuntimeError, "Negative Argument" ) { @circle.radio(-1) }
  end
 
  def test_failure
	assert_in_delta(0.5, @circle.radio(1), 0.0001, "Radius doesn't work" )
  end
 
end
