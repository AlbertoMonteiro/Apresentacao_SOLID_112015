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
		quadrado.largura = 3
		assert_equal 9, quadrado.area
    end
	
	def area_deve_ser_20_quando_quadrado_retangulo_4x5
		quadrado = Quadrado.new
		quadrado.altura = 4
		quadrado.largura = 5
		assert_equal 20, quadrado.area
    end
end