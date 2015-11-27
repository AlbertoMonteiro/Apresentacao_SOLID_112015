require 'test/unit'

class Teste < Test::Unit::TestCase
    def area_deve_ser_6_quando_retangulo_2x3
    	retangulo = Retangulo.new
		retangulo.altura = 2
		retangulo.largura = 3
		assert_equal 6, retangulo.area
    end
    
	def area_deve_ser_9_quando_quadrado_3x3
		quadrado = Quadrado.new
		quadrado.tamanhoLado = 3
		assert_equal 9, quadrado.area
    end
	
	def area_deve_ser_20_quando_quadrado_retangulo_4x5
		quadrado = Quadrado.new
		quadrado.tamanhoLado = 4 # não faz mais sentido
		quadrado.tamanhoLado = 5 # não faz mais sentido
		assert_equal 20, quadrado.area # não faz mais sentido
    end
end